Rails.application.routes.draw do
 
	get "/pages/*id" => 'pages#show', as: :page, format: false

	root to: 'pages#show', id: 'welcome'

	match '/contacts',     to: 'contacts#new',             via: 'get'
	resources "contacts", only: [:new, :create]

	resources :softwares 

end
