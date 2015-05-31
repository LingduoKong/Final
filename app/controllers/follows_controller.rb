class FollowsController < ApplicationController

	respond_to :html, :js

	def index
		@user = User.find_by(:id => params["user_id"])
	end

	def new
		
	end

	def create
		@user = User.find_by(:id => params["user_id"])
		follow = Follow.new
		follow.star_id = params["user_id"]
		follow.fan_id = session["user_id"]
		if follow.save
			respond_to do |format|
				format.js {render "new"}
			end
		end
	end

	def destroy
		@user = User.find_by(:id => params["user_id"])
		Follow.find_by_id(params["id"]).delete
		respond_to do |format|
			format.js  {render "destroy"}
		end
	end


	end