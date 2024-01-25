
Rails.application.routes.draw do
  resources :zemis, only: [:index, :show] do
    resources :comments, only: [:create]
  end


  # If you need a custom action, you can use 'collection' or 'member'
  # For example, a custom action 'search' that acts on the collection:
  # get 'zemis/search', to: 'zemis#search', on: :collection

  root to: 'home#index'

end
