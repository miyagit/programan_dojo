class UsersController < ApplicationController

	def new
		@user = User.new
		@jobs = Job.all
	end

	def create
		User.create(tweet_pramas)
		redirect_to root_path
	end

end
