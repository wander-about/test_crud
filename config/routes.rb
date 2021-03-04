Rails.application.routes.draw do
  root "posts#index"

  get "home/index"
  get "posts/new"
  post "posts/create"
  get "posts/index"

  get "posts/show/:id" => "posts#show", as: "psots_show"
  get "posts/edit/:id" => "posts#edit", as: "posts_edit"
  post "posts/update/:id" => "posts#update", as: "posts_update"
  get "posts/destroy/:id" => "posts#destroy", as: "posts_destroy"
end
