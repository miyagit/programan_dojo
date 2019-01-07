class UsersController < ApplicationController
	def new
	end

	def create
		User.create(user_params)
		redirect_to root_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :job_id, :sex, :age, :tall, :weight)
	end
end
