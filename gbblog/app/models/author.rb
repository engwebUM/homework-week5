class Author < ActiveRecord::Base
  has_many :posts

  validates_presence_of :name, :bio, :photo

  def to_param
    # "#{id}-#{name.parameterize}"
    "#{name.parameterize}"
  end
end
