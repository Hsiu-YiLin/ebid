class Product < ActiveRecord::Base
	has_many :users

	validates :title, presence: true
	validates :description, presence: true
	validates :deadline, presence: true
end
