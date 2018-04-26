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
    :check_sri => true,
    # Complains this is an empty file since it just redirects to the PDF
    :file_ignore => ['_site/resume.html'],
    :internal_domains => ['kevintechnology.com'],
    # These domains block htmlproofer
    :url_ignore => [/linkedin.com/, /blogspot.com/],
  }
  begin
    HTMLProofer.check_directory("_site", options).run
  rescue => msg
    puts "#{msg}"
    exit 1
  end
end

desc "Delete the built HTML"
task :clean do
  puts 'Cleaning up...'.bold
  sh "jekyll clean"
end

task :default => [:serve]
