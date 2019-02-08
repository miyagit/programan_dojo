class MainController < ApplicationController
	def top
		@title = "paramsを確認してみよう"
		@users = User.all
	end
end
