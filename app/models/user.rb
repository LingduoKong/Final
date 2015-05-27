class User < ActiveRecord::Base

	has_secure_password

	has_many :tweet, class_name: 'Tweet', 
										foreign_key: 'user_id',
										dependent: :destroy

	has_many :comment, class_name: 'Comment', 
										foreign_key: 'user_id',
										dependent: :destroy

	has_many :following_relationships, class_name:  "Follow",
                                  foreign_key: "fan_id",
                                  dependent:   :destroy

 	has_many :followed_relationships, class_name:  "Follow",
                                  foreign_key: "star_id",
                                  dependent:   :destroy                                 

	validates :email, :uniqueness => true, :allow_nil => false
	validates :username, :uniqueness => true, :allow_nil => false
  validates :password, :presence => true

end
