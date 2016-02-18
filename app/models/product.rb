class Product < ActiveRecord::Base
	belongs_to :users
	validates :title, presence: true
	validates :description, presence: true
	validates :deadline, presence: true
end
