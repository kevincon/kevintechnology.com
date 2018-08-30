---
layout: post
title: Formatting an SD Card for the Beagleboard(Xm,Bone) in Ubuntu 12.04
date: '2012-08-17T15:54:00-07:00'
tags:
- beagleboard
- ubuntu
- sd card
- format
- angstrom
redirect_from:
- /post/29649230627/formatting-an-sd-card-for-the-beagleboardxmbone
---

I about tore my hair out on this one.

The guys who make the Angstrom distribution of Linux have a script called `mkcard.txt` ([https://angstrom.s3.amazonaws.com/demo/beagleboard/index.html](https://angstrom.s3.amazonaws.com/demo/beagleboard/index.html)) which has traditionally worked for me to format an SD card properly for the Beagleboard family of single-board computers.

But for some reason whenever I would run it in the last month or so on either Ubuntu 10.04 or Ubuntu 12.04, I would receive the following error and the card would not be properly formatted:

```
/dev/sdb2 is apparently in use by the system; will not make a filesystem
```

I found a path to the solution thanks to this askubuntu.com question: [https://askubuntu.com/questions/124565/mkfs-vfat-unable-to-open-dev-sdg1-device-or-resource-busy/164106#164106](https://askubuntu.com/questions/124565/mkfs-vfat-unable-to-open-dev-sdg1-device-or-resource-busy/164106#164106).

There seem to be two problems. The first is that `dmsetup` is stealing the SD card devices.

The second problem is that the script calls `kpartx` to add a partition mapping of the SD card you’re using to the `/dev/mapper` folder. In English, this means that it will take the drive string (`“/dev/sdb”` in my case), mount the partitions on the drive, and create device files for them in `/dev/mapper`. I’m not sure why this causes the script to fail, but I’m guessing the system isn’t relinquishing control of the partition device files to the script so it can run `mkfs.vfat` and `mke2fs` on them.

So anyway, to make the mkcard.txt script work, first run it once (and experience the error I referenced above).

Then, remove the stolen devices from dmsetup by running:

```
sudo dmsetup remove sdb1
sudo dmsetup remove sdb2
```

Finally, comment out the following lines in `mkcard.txt`:

```bash
if [ -x `which kpartx` ]; then
    kpartx -a ${DRIVE}
fi
```

And run `mkcard.txt` one more time, and you should be good to go!
