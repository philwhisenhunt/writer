Rails.application.routes.draw do
  get 'blog_posts/new'
  get 'blog_posts/edit'
  get 'blog_posts/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
end
