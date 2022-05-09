Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats, except: :destroy
  resources :cat_rental_requests, only: [:new, :create] do
    member do
      post :approve
      post :deny
    end
  end
  get 'cats/rent/:id', to: 'cat_rental_requests#new'
  get 'cats/rent/:id/approve', to: 'cat_rental_requests#approve'
  get 'cats/rent/:id/deny', to: 'cat_rental_requests#deny'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  root to: redirect('/cats')
end
