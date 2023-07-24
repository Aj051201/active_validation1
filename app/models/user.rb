# class User < ApplicationRecord
# 	validates :name,presence: {message: "Name nhi h"}
# 	# before_validation	:check

# 	# private
# 	# 	def check
# 	# 		puts "before_validation: block"
# 	# 	end
# 	before_validation do
# 		puts "In a single line"
# 	end
# end

# class PictureFileCallbacks
#   def self.after_destroy(picture_file)
#     if File.exist?(picture_file.p1.txt)
#       File.delete(picture_file.p1.txt)
#     end
#   end
# end
class User < ApplicationRecord
  # has_many :payments
	# validates :name,presence: {message: "Name nhi h yrr"}
  # before_validation :normalize_name, on: :create

  # # :on takes an array as well
  # after_validation :set_location, on: [ :create, :update ]

  # private
  #   def normalize_name
  #     self.name = name.downcase.titleize
  #   end

  #   def set_location
  #     self.login = "ajayverma0138@gmail.com"
  #   end

  # after_create :a_create
  # after_update :a_update
  # after_save :a_save
  # private
  # def a_create
  #   puts "after create "
  # end
  # def a_update
  #   puts "after update "
  #   User.where(self.id = 8).update(self.name = "Hole")
  # end
  # def a_save
  #   puts "after save"
  # end

  # after_initialize do |user|
  #   puts "You have initialized an object!"
  # end

  # after_find do |user|
  #   puts "You have found an object!"
  # end
  
  # after_delete :a_delete
  # def a_delete
  #   puts "after delete"
  # end
#   after_destroy_commit :delete_picture_file_from_disk

#   def delete_picture_file_from_disk
#     if File.exist?(p1.txt)
#       File.delete(p1.txt)
#     end
#   end
# end

# class PictureFile < ApplicationRecord
  # after_destroy_commit :delete_picture_file_from_disk

  # def delete_picture_file_from_disk
  #   if File.exist?(filepath)
  #     File.delete(filepath)
  #   end
  # end
  # after_commit :a_coomit
  # def a_coomit
  #   puts "after_Coomit"
  # end
  # after_rollback :a_rollback
  # def a_rollback
  #   puts "After Rollback"
  # end
  # after_create_commit :log_user_saved_to_db
  # after_update_commit :log_user_saved_to_db

  # private
  #   def log_user_saved_to_db
  #     puts 'User was saved to database'
  #   end

  # after_save_commit :log_user_saved_to_db

  # private
  #   def log_user_saved_to_db
  #     puts 'User was saved to database'
  #   end
  before_save :a_save
  def a_save
    byebug
    puts "after save"
  end
  before_update :b_update
  def b_update
    byebug
    puts "before upadate"
  end

  # after_destroy PictureFileCallbacks
  # after_destroy :a_destroy
  # def a_destroy
  #   puts "after destroy"
  # end
  # validates :name,presence: true
  # validates :age,numericality: {only_integer: true,greater_than: 18}, allow_nil: true
  # before_validation :cap_name,:set_age,:add_suffix
  # def cap_name
  #   if name.present?
  #     self.name = name.capitalize
  #   end
  # end
  # def set_age
  #   self.age = 20 
  # end
  # def add_suffix
  #   self.login = name + "@ftpls.com"
  # end
  # validate :cap_name
  # def cap_name
  #   if name.present?
  #     self.name = name.capitalize
  #   end
  # end
  # validates :name,length: {maximum: 100}
  # after_validation :set_id
  # def set_id
  #   self.login = self.
  # end
  # before_create :set_joining_date
  # def set_joining_date
  #   self.joining_date = Time.now
  # end
  # after_create :set_joining_date
  # def set_joining_date
  #   self.update(joining_date: Time.now)
  # end
  # before_save : abhi no reason
  # after_save :send_notification
  # def send_notification
  #   puts "You are succesfully saved to the database"
  # end
  # after_update :a_update
  # def a_update
  #   puts "#{name} is updated "
  # end
  # before_destroy :delete_user
  # def delete_user
  #   # if self.name == 'vinod'
  #   #   puts "Yes this vinod"
  #   # end
  #   if name
  #     errors.add(:name, "cannot delete the user")
  #     throw(:abort)

  #   end
  # end
  # after_destroy :a_destroy
  # def a_destroy
  #   if name.present?
  #     puts "#{name} is succesfully deleted from the database"
  #   end
  # end
  # after_commit :a_commit, on: :create
  # def a_commit
  #   puts "Notification sent to the user"
  # end
  after_commit :abc
  def abc
    self.name = "Gajendra"
  end
end
# When we use after_create callback with example

# def delete_picture_file_from_disk
#     if File.exist?(filepath)
#       # File.delete(filepath)
#       puts filepath
#     end
#     puts "false"

#   end