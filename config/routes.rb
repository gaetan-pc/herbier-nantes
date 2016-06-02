Rails.application.routes.draw do

  get 'specimens/index'

  get 'specimens/show'

  mount Riiif::Engine => '/image-service', as: 'riiif'

end
