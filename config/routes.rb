Rails.application.routes.draw do
	root 'main#top'
	resources :main
  resources :users
end
