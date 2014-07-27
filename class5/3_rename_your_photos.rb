#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that copies .jpg files from the source directory to the target
# directory, appending the file's size to the end of the file name.
#
# So, assuming there's a source file that's 12,345 bytes long:
#
#   source/photo.jpg
#
# the program should copy it to the target file:
#
#   target/photo_12345.jpg
#
# For example, the program should output to the shell:
#
#   $ ruby 2_rename_your_photos.rb target source
#   => Copied 10 photos from source to target
#
# If both source and target directories are not given, the program should output
# a helpful usage message and immediately exit. For example:
#
#   $ ruby 2_rename_your_photos.rb
#   Usage: 3_rename_your_photos.rb SOURCE TARGET
#
# A few methods you might find useful are:
#
#   File.size(file_path) → integer
#
#     Returns the size of file_path.
#
#   File.basename(file_path, suffix) → base_name
#
#     Returns the last component of the name given in file_path. If suffix is
#     present at the end of file_path, it is removed.
#
#     File.basename("class5/code.rb", ".rb")   #=> "code"
#     File.basename("class5/code.rb", ".js")   #=> "code.rb"
#
#   FileUtils.copy_file(source_path, target_path)
#
#     Copies the file contents of source_path to target_path, both of which must
#     be a file path.
require "fileutils"
require "pp"

def photo_copy(source, target)
  #require pp
  photos = Dir["#{source}/*.jpg"]
  puts photos

  photos.each do |photo|
    base_name = File.basename(photo, '.jpg')
    newname = "#{target}/#{base_name}_#{File.size(photo)}.jpg"
    FileUtils.copy_file(photo, newname)
  end
end

source = ARGV[0].to_s
target = ARGV[1].to_s

if source.empty? || target.empty?
  puts "Usage: 3_rename_your_photos.rb SOURCE TARGET"
  exit
end

photo_copy(source, target)
