# coding: utf-8
abort('Please run this using `bundle exec rake`') unless ENV["BUNDLE_BIN_PATH"]
require 'html-proofer'
require 'jekyll'

# Extend string to allow for bold text.
class String
  def bold
    "\033[1m#{self}\033[0m"
  end
end

desc "Build the site"
task :build do
  puts 'Building site...'.bold
  sh "jekyll build --profile"
end

desc "Serve the site"
task :serve do
  puts 'Serving site...'.bold
  begin
    sh "jekyll serve"
  rescue Interrupt
    puts "\nExiting..."
  end
end

desc "Perform all testing on the built HTML"
task :test => [:build] do
  puts 'Testing site...'.bold
  options = {
    :allow_hash_href => true,
    :assume_extension => true,
    :check_external_hash => true,
    :check_html => true,
    :check_img_http => true,
    :check_opengraph => true,
    # Complains this is an empty file since it just redirects to the PDF
    :file_ignore => ['_site/resume.html'],
    :internal_domains => ['kevintechnology.com'],
    :url_ignore => [
      # These domains block htmlproofer
      /linkedin.com/, /blogspot.com/,
      # These hrefs are used for jquery magic on uwave "how it works" page
      '#7seg', '#arduino', '#client', '#materials', '#microwave', '#server', '#videos',
    ],
  }
  begin
    HTMLProofer.check_directory("_site", options).run
  rescue => msg
    puts "#{msg}"
    exit 1
  end

  puts 'Checking post-build...'.bold
  begin
    sh "test -z \"$(git status --porcelain)\""
  rescue => msg
    puts "Working directory is not clean:"
    sh "git status --porcelain"
    exit 1
  end
end

desc "Delete the built HTML"
task :clean do
  puts 'Cleaning up...'.bold
  sh "jekyll clean"
end

task :default => [:serve]
