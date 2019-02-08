class MainController < ApplicationController
	def top
		@title = "paramsを確認してみよう"
		@users = User.all
	end

	def search
		@users = User.where(name: params[:keyword])
	end
end
