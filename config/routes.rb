Rails.application.routes.draw do
	root 'main#top'
  get 'main' => 'main#top'
end
