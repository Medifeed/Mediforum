class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	 is_impressionable
end

