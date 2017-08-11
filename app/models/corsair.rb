class Corsair < ApplicationRecord
	validates :username, presence: true
	has_many :gossips
end