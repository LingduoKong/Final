class User < ActiveRecord::Base

	has_many :tweet, class_name: 'Tweet', foreign_key: 'user_id'

	has_many :comment, class_name: 'Comment', foreign_key: 'user_id'

	validates_presence_of :username, uniqueness: true
  validates_presence_of :password
  validates_presence_of :email, uniqueness: true
end
