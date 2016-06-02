Rails.application.routes.draw do

  mount Riiif::Engine => '/image-service', as: 'riiif'

end
