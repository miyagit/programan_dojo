Rails.application.routes.draw do
	root 'main#top'
	get "search" => "main#search"
  resources :users
end
