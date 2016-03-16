Rails.application.routes.draw do
  resources :tests

  resources :markets
  get '/weapons/ak47' => 'weapons#ak47'
   get '/weapons/m4a1s' => 'weapons#m4a1s'


  resources :accounts do
    get 'profile', on: :collection #member
  end
  
  get '/home', to: 'static_pages#home'
  post '/', to: 'static_pages#create'
  delete '/home', to: 'static_pages#destroy'

end
