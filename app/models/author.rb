	# validates :name,presence: true
class Author < ApplicationRecord
	has_many :books,dependent: :destroy
	# validates_associated :books
end
