class User < ActiveRecord::Base
	has_many :posts

  validates_presence_of :firstname, :lastname
  validates :email, 
            format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/i },
            :allow_blank => true
  validates :twitter, 
            format: { with: URI::regexp(%w(http https)) },
            :allow_blank => true
end
