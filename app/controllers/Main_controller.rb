class MainController < ApplicationController
	def top
		@title = "アソシエーションを使ってみよう！"
		@tweets = Tweet.all
	end
end
