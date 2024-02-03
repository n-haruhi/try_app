Rails.application.routes.draw do
  # URL「top」にアクセスしたときにhomesコントローラのtopアクションが呼び出される
  get 'top' => 'homes#top'
  root 'homes#top'
  get 'about' => 'homes#about'

  resources :lists

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
