# class GoodnessValidator < ActiveModel::Validator
#   def validate(record)
#     if record.name == "Tukaram"
#       record.errors.add :base, "This person is already there"
#     end
#   end
# end

# class GoodnessValidator < ActiveModel::Validator
#   # def validate(record)
#   #   if options[:fields].any? { |field| record.send(field) == "Tukaram" and record.send(field) == 20 }
#   #     record.errors.add :base, "This person is Tukaram"
#   #   end
#   # end
#   # def validate(record)
#   # 	if record.name == "AJAYVERMA"
#   # 		return true
#   # 	else
#   # 		record.errors.add :base, "Kaun h yehh"
#   # 	end
#   # end
#   def validate(record)
#     unless record.name.start_with? 'X'
#       record.errors.add :name, "Need a name starting with X please!"
#     end
#   end
# end


class Person < ApplicationRecord
	# validates :email, confirmation: true
	# validates :age,comparison: {greater_than: 20,message: "age kam h"}
	# validates :age,exclusion: {in: %w(10),message: "x y z nhi hona chahiye"}
	# validates :name,format: {with: /\A[a-zA-Z0-9@]+\Z/}
	# validates :email,format: {with: /[a-z]*[0-9]*@gmail.[a-z]+/}
	# validates :name,format: {with: /\A[a-z]*\Z/}
	# validates :name,format: {with: /[a-zA-Z0-9]*/}
	# validates :name,inclusion: {in: %w(Ramlal Ghanshyam 10),message: "%{value} is not allowed"}
	# validates :name, length: {minimum: 5,too_long: "chhota h kam se kam 5 aane chahiye"}
	# validates :name, length: {maximum: 5,too_short: "Jyada se  jyada %{count} aane chahiye"}
	# validates :name, length: {in: 0..5,message: "In range of 0 to 5"}
	# validates :name, length: {is: 5,wrong_length: "5 hi hona chahiye"}
	# validates :email,confirmation: true
	# validates :email_check ,presence: true
	# validates :age,numericality: {only_float: true,odd: true,in: 0..6}
	# validates :name,presence: true
	# validates :email,absence: true
	# validates :name,uniqueness: {case_sensitive: true}
	# validates_with GoodnessValidator ,fields: [:name,:age]

	# validates :name ,allow_nil: true
	# validates :name ,allow_blank: true
	# validates :age, inclusion: { in: %w(small medium large),
  #   message: "%{value} is not a valid size" }, allow_nil: true
# validates :name, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }, allow_blank: true
	# validates :name, length: {in: 0..5,message: " %{model} %{attribute} %{value}In range of 0 to 5"}
	# validates :name, uniqueness: {message: "saayad wahan already h"} ,on: :save
	# validates :name, uniqueness: {message: "saayad wahan already h"} ,on: :update
	# validates :name, uniqueness: {message: "saayad wahan already h"} ,on: :account_setup
	# validates :name, inclusion: {in: %w(bholu Kalu),message: "Yehh do hi naam likh sakte ho"},allow_blank: true
	# validates :name,
  #   uniqueness: {
  #     # object = person object being validated
  #     # data = { model: "Person", attribute: "Username", value: <username> }
  #     message: ->(object, data) do
  #       "Hey #{object.name}, #{data[:value]} is already taken."
  #     end
  #   }
  #   validates :name,uniqueness: {message: ->}
  # validates :name,uniqueness: {message: "This person is already exists"},on: :account_setup
  # validates :name,presence: {strict: true}
  # validates :name,presence: true
  # validates :token, presence: true, uniqueness: true, strict: TokenGenerationException
  # validates_with GoodnessValidator
  # validate :abc
  # def abc 
  # 	if name == "AJAYVERMA"
  # 		return true
  # 	else
  # 		errors.add :name, "Kaun h yehh"
  # 	end
  # end
  # validates_each :name do |record,attr,value| record.errors.add(attr,"Galat h") if value == "AJAYVERMA" end
  # validates :name, presence: true ,if: :check
  # validates :name,uniqueness: true ,if: Proc.new {|a| a.name=='mohit'}
  # validates :name,presence: true ,unless: -> { name=='mohit'}
	# def check
	# 	return false
	# end  
	# with_options if: :is_admin? do |admin|
	# 	admin.validates :name ,presence: true
	# 	admin.validates :age ,uniqueness: true
	# end
	# def is_admin? 
	# 	return false
	# end
	# validates :name,uniqueness: {case_sensitive: false}
	# validates :name,length: {is: 5}
	# validates_with GoodnessValidator
	# after_destroy :a_destroy
	# def a_destroy
	# 	puts "after destroy"
	# end
	# after_find :a_find
	# def a_find
	# 	puts "after find"
	# end
	# after_update_commit :a_commit
	# def a_commit
	# 	puts "after commit"
	# end
	# before_save :m1, if: [:m2,:m3]
	# def m1
	# 	puts "m1"
	# end
	# def m2
	# 	return true
	# end
	# def m3
	# 	return true
	# end
end
