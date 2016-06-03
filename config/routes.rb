Rails.application.routes.draw do

  root :to => "specimens#index"

  resources :specimens, only: [:index, :show]

  mount Riiif::Engine => '/image-service', as: 'riiif'

end
