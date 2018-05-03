# Syntax {% video /path/to/video.mp4 %}
#
# Example:
# {% video /uploads/test.mp4 %}
#
# If a JPEG or PNG image with the same base name exists in the same folder,
# it will be used as the poster image. If not, and ImageMagick's convert command is
# available, a JPEG will be created from the first frame.
#
# To provide a path to the convert command, "imagemagick_convert" can be set
# in _config.yml to point to a valid installation of ImageMagick's `convert`.
#
#   imagemagick_convert: /usr/local/bin/convert

module Jekyll
  class VideoTag < Liquid::Tag
    @video = nil
    @poster = nil

    def initialize(tag_name, video, tokens)
      super
      if video =~ /\s*(\S+\.(mp4))\s*$/i
        @video = $1
      end
    end

    def render(context)
      base = context.registers[:site].source
      if @video
        error = nil

        video_base_path = File.join(File.dirname(@video), File.basename(@video, '.*'))
        # Check for png or jpeg poster images with same basename
        ['.png', '.jpg', '.jpeg'].each{ |ext|
          potential_poster_path = video_base_path + ext
          if File.exists?(File.join(base, potential_poster_path))
            @poster = potential_poster_path
            break
          end
        }

        unless @poster
          # No existing poster image found
          # if the convert command exists, create a jpg from the video
          convert = context.registers[:site].config['imagemagick_convert']
          convert ||= 'convert' if system "which convert &> /dev/null"

          if convert
            local_video_path = File.join(base, @video)
            poster_path = video_base_path + '.jpg'
            local_poster_path = File.join(base, poster_path)
            %x{#{convert} "#{local_video_path}"[0] "#{local_poster_path}"}
            @poster = poster_path
          else
            error = "<Poster image for #{@video} not found and could not be generated>"
          end
        end

        if @poster && error.nil?
          %Q{<video class="video-js vjs-default-skin vjs-big-play-centered vjs-fluid" data-setup="{}" controls loop playsinline preload="meta" poster="#{@poster}"\><source src="#{@video}" type='video/mp4' \><p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p></video>}
        else
          error || "<Error processing input, expected syntax: {% video /path/to/video.mp4 %}>"
        end
      else
        "<Error processing input, expected syntax: {% video /path/to/video.mp4 %}>"
      end
    end
  end
end

Liquid::Template.register_tag('video', Jekyll::VideoTag)
