Rails.application.routes.draw do
  root 'links#index'
  resources :links do
    member do
      put 'like', to: 'links#upvote'
      put 'dislike', to: 'links#downvote'
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
