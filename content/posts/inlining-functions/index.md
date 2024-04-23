---
date: "2013-05-07T02:32:00Z"
tags:
- compiler
- inline
- icc
- programming
title: How to Determine if Your Compiler is Inlining Your Functions
url: 2013/05/07/how-to-determine-if-your-compiler-is-inlining-your.html
---

[Inlining functions](https://en.wikipedia.org/wiki/Inline_function) can potentially increase the performance of a program. When you mark a function with `inline`, the compiler will try to expand calls to the function to actually be the body of the function.

The idea is that inlining a function will eliminate the overhead associated with calling that function, like pushing values onto the stack and triggering a context switch. However, depending on the program, performance could actually get worse because inlining functions increases the overall size of the code which can lead to instruction cache memory thrashing (i.e. the computer can’t keep all of the instructions in its faster, short-term memory).

To ask the compiler to inline a function in C, you can use the `inline` keyword when declaring your function:

```c
inline int plus_one(int x) {
    return x + 1;
}
```

In the example above, we inline the (not very useful) `plus_one()` function because it only has one instruction and therefore saving the overhead of performing a full context switch is a useful optimization.

Note that the `inline` keyword usually only asks the compiler to inline a function. The compiler might analyze the program and actually not inline a function, even if it has the `inline` keyword, because it thinks the inlining will not increase performance.

This leaves developers wondering “did the compiler actually inline my function?”

Some people will advise you to use the `-Winline` compiler flag to have the compiler output warnings/information about whether it is actually inlining the functions you precede with the `inline` keyword. But depending on your compiler, this might not be very useful. For example, here is the Intel’s C/C++ Compiler `icc` inlining report output:

```
<matmul.c;37:74;IPO INLINING;dotprod;0>
INLINING REPORT: (dotprod) [1/2=50.0%]

  -> _mm_add_pd(EXTERN)
  -> _mm_mul_pd(EXTERN)
  -> _m_empty(EXTERN)
  -> _mm_setzero_pd(EXTERN)


<matmul.c;79:128;IPO INLINING;matmul;0>
INLINING REPORT: (matmul) [2/2=100.0%]

  -> INLINE (MANUAL): dotprod(3) (isz = 34) (sz = 45 (21+24))
    -> _mm_setzero_pd(EXTERN)
    -> _m_empty(EXTERN)
    -> _mm_mul_pd(EXTERN)
    -> _mm_add_pd(EXTERN)
  -> INLINE (MANUAL): dotprod(4) (isz = 34) (sz = 45 (21+24))
    -> _mm_setzero_pd(EXTERN)
    -> _m_empty(EXTERN)
    -> _mm_mul_pd(EXTERN)
    -> _mm_add_pd(EXTERN)
  -> _vla_free(EXTERN)
  -> _vla_alloc(EXTERN)
```

What the heck does all of that mean? A friend helped me understand that the percentages indicate the number of locations that the compiler decided to inline the function, but I was not able to find a good reference/guide on the Internet on how to interpret the output for `icc`’s inlining report.

I have heard that `gcc` has a more readable inlining report, but I have not tried it yet.

When I first wrote this blog post, I suggested looking at the generated assembly code to check if the compiler actually inlined the function. In the case of x86, this would involve searching for any “call” assembly instructions (“call” is the x86 way of calling a function).

However, a friend pointed out that this is not a perfect way of determining whether a compiler inlined functions. Besides the fact that it is architecture-specific (i.e. ARM and MIPS have different assembly instructions for calling functions):

1.  It ignores indirect jumps, which is another valid way of calling a function (e.g. `leal %eax, jmp *%eax`).
2.  The linker might make a “link-time optimization” (or LTO) which changes whether or not the function is inlined.

So your best chance of understanding if your functions are being inlined is to look at the generated assembly code and the compiler’s inlining report, but even those resources might not tell the whole story.

* * *

_Thanks to Saleem Abdulrasool for providing some really helpful insights for this post._
