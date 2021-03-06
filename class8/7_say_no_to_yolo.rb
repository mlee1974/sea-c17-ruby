#!/usr/bin/env ruby
#
# 4 points
#
# Write the following method:
#
#   Array#each_without_yolo(&block)
#
#     Iterates through an array, replacing all occurances of "YOLO" and "yolo"
#     with "Life is too short".
#
#     ["OMG", "YOLO"].each_without_yolo { |e| puts e }
#
#     Output:
#
#     OMG
#     Life is too short

class Array
  def each_without_yolo(&block)
    self.each do |e|
      if e == "yolo" || e == "YOLO"
        puts "Life is too short"
      else
        puts e
      end
    end
  end
end

["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }
