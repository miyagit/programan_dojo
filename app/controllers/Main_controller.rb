class MainController < ApplicationController
	def top
		@title ="ストロングパラメーターを使ってみよう"
		@users = User.all
	end
end
