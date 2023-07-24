# class PictureFileCallbacks
#   def self.after_destroy(picture_file)
#   	byebug
#     if File.exist?(picture_file.p1.txt)
#       File.delete(picture_file.p1.txt)
#     end
#   end
# end
# class PictureFile < ApplicationRecord
# 	after_destroy PictureFileCallbacks
# end
