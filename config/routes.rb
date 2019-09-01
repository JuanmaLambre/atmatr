Rails.application.routes.draw do
  resources :atms do
  end

  get '/networks', to: 'atms#networks'
  get '/banks', to: 'atms#banks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
