Rails.application.routes.draw do
  devise_for :patients, controllers: { registrations: 'registrations' }
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  get 'products/change_state', to: 'products#change_state', as: :change_state
end
