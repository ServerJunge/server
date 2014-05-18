Rails.application.routes.draw do
 
  get 'pages/welcome' => 'high_voltage/pages#show', id: 'welcome'

end
