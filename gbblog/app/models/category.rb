class Category < ActiveRecord::Base
  has_many :posts

  validates_presence_of :name, :photo

  def to_param
    # "#{id}-#{name.parameterize}"
    "#{name.parameterize}"
  end
end
