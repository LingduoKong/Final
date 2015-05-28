class FollowsController < ApplicationController

	def index
		@user = User.find_by(:id => params["user_id"])

		@followers_id = @user.followed_relationship_ids

		@followings_id = @user.following_relationship_ids
	end

	def new
		
	end

	def create
		
	end

	def destroy
		
	end


end