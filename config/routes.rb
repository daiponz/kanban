Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'#topページをルートに指定
    
  resources :top,only: %i(index edit update)
  # ==========ここから追加する 下記と同じルート作成==========
  resources :list,only: %i(new create edit update destroy) do
    resources :card,except: %i(index)
  end
#  get 'list/new'
#  post 'list/create'
  # ==========ここまで追加する==========
end
