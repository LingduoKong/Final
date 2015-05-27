class MessagesController < ApplicationController

	def index
		@user = User.find_by_id(session["user_id"])
		@connection = Connection.find_by_id(params["connection_id"])

		if session["user_id"] == @connection.user_one_id
			@conncetor = User.find_by_id(@connection.user_two_id)
		else
			@conncetor = User.find_by_id(@connection.user_one_id)
		end
	end

	def new
		
	end

	def create
		
	end

	def destroy
		
	end

end