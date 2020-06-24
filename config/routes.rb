Rails.application.routes.draw do
  get '/', to: 'application#index'
  post '/', to: 'application#create'
end