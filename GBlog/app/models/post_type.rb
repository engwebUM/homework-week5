class PostType < ActiveRecord::Base
	has_many :posts
	has_many :authors, :through=>:posts
end
