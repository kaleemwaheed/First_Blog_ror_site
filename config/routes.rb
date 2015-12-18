Rails.application.routes.draw do

  get '/posts' => 'posts#index',as: :posts
  post '/posts' => 'posts#create'
  get '/post/:id' => 'posts#show', as: :post
  patch '/post/:id' => 'posts#update'
  delete '/post/:id' => 'posts#destroy'
  get '/posts/new' => 'posts#new', as: :new
  get '/post/:id/edit' => 'posts#edit', as: :edit_post
  get '/post/:id/index' => 'posts#index'  
  #get 'post/:id/comments' => 'posts#show'
get '/pages' => 'posts#index'
  get '/pages/contact' => 'pages#contact', as: :contact
  root "posts#index"
  resources :posts

  resources :posts do
    resources :comments
  end 
end