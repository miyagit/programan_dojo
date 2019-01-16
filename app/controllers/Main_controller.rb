class MainController < ApplicationController
	def top
		@title = "gemのkaminariを使ってページネーションを実装してみよう"
		@users = User.all
	end
end
