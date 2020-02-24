class MainController < ApplicationController
  def top
    @users = User.all
  end
end
