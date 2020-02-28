Rails.application.routes.draw do
	root 'main#top'
  resources :users

  resource :admin_view, only: :show
end
