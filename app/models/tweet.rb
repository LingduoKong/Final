class Tweet < ActiveRecord::Base

	has_many :comments, class_name: 'Comment', foreign_key: 'tweet_id'

	has_many :like, class_name: 'User', foreign_key: 'tweet_id', :through => :like

  validates_presence_of :content
end
