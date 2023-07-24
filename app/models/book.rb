class Book < ApplicationRecord
	belongs_to :author
	validates :name ,presence: true
	after_destroy :a_destroy
	def a_destroy
		puts "after_destroy"
	end
end
