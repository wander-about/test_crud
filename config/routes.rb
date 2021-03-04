Rails.application.routes.draw do
  get 'comments/create'
  root "posts#index"

  get "home/index"
  get "posts/new"
  post "posts/create"
  get "posts/index"

  get "posts/show/:id" => "posts#show"
  get "posts/edit/:id" => "posts#edit"
  post "posts/update/:id" => "posts#update"
  get "posts/destroy/:id" => "posts#destroy"

  post "posts/:id/comments" => "comments#create", as: "posts_comments_create"
  
end
