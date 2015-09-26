Rails.application.routes.draw do
  # Get welcome/index path
  get 'welcome/index'

  # Do possibile for articles resource ( view , edit , create and delete ) add a comment
  resources :articles do
    resources :comments
  end

 # The page that charge for main by server call. 
   root 'articles#index'

end
