Rails.application.routes.draw do
  # URL「top」にアクセスしたときにhomesコントローラのtopアクションが呼び出される
  get 'top' => 'homes#top'
  root 'homes#top'
  get 'about' => 'homes#about'

  # GETはデータを保存する
  get 'lists/new'
  # postはデータを新規追加(保存)する
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  # この:idはアクション内にparams[:id]と記述することで取得できる
  # 'lists#show'の設定を、'list'として利用できる
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
