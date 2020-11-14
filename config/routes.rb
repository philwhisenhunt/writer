Rails.application.routes.draw do
  get 'user/new'
  get 'user/edit'
  get 'user/destroy'
  resources :blog_posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#main"
end
