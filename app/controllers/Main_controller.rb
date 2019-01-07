class MainController < ApplicationController
	def top
		@title = "form_forで投稿フォームを作ってみよう"
		@users = User.all
	end
end
