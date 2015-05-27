class CommentsController < ApplicationController

	def index
		@comments = Comment.where(tweet_id: tweet.id).order('date desc')
	end

	def create
		comment = Comment.new
		comment.content = params[:comment]
		comment.tweet_id = params[:tweet_id]
		comment.date = DateTime.now.to_i
		comment.user_id = session["user_id"]
		comment.save

		respond_to do |format|
			format.html { redirect_to tweet_path(params[:tweet_id])}
			format.js 
		end

	end
		
	def destroy
		Comment.find_by(id: params[:id]).delete
		redirect_to root_path
	end
end