Rails.application.routes.draw do
  
  resources :pedidos
  resources :produtos
  resources :clientes
  devise_for :users
  root to: 'home#home'

  get 'usuarios' => 'home#show_usuarios'

  get 'usuarios/:id/editar' => 'home#edit_usuario', as: 'editar_usuario'

  get 'usuarios/novo' => 'home#new_usuario', as: 'novo_usuario'

  post 'usuarios' => 'home#create_usuario', as: "criar_usuario"

  put 'usuarios/:id' => 'home#update_usuario', as: "atualizar_usuario"

  delete 'usuarios/:id' => 'home#destroy_usuario', as: "deletar_usuario"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # devise_for :users
end
