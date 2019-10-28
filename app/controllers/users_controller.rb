class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      redirect_to root_path, notice: 'userを作成できました。'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :job_id, :sex, :age, :tall, :weight, :income)
  end
end
