class MainController < ApplicationController
  def top
    @title = 'allメソッドをどの様にビューで活用できるか確認しよう'
    @users = User.all
  end
end
