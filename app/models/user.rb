class User < ActiveRecord::Base

	has_secure_password

	has_many :tweet, class_name: 'Tweet', foreign_key: 'user_id'

	has_many :comment, class_name: 'Comment', foreign_key: 'user_id'

	has_many :follows, class_name: 'Follow'

	has_many :fans, class_name: 'User', :through => :follows

	has_many :stars, class_name: 'User', :through => :follows

	validates :email, :uniqueness => true, :allow_nil => false
	validates :username, :uniqueness => true, :allow_nil => false
  validates :password, :presence => true

end
