Rails.application.routes.draw do
  root to: 'application#index'
    # ルートパス （get '/', to: '[コントローラー名]#[アクション名]'） にリクエストする。

  resources :application, only: [:index, :create]
  post '/', to: 'application#create'
end