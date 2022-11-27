Rails.application.routes.draw do

  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]

  # # filtering routes with explicitly defined controller actions
  # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
  # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'

  
end


# do...end allows a blick of nested routes from reviews(a 'child object' of a doghouse) to be passed to the doghouse(its 'parent object')