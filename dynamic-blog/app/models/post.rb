class Post < ActiveRecord::Base
	belongs_to :user

  validates_presence_of :title, :description, :user_id
  validates_length_of :description, minimum: 50
end
