class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :category

  validates_presence_of :title, :text

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
