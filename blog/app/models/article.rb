class Article < ActiveRecord::Base
  validates_presence_of :title, :time, :author, :body, :author_info, :author_img_link

end
