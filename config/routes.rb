MetadataEditor::Application.routes.draw do
  devise_for :users

  resources :repositories
  resources :records

  root :to => 'high_voltage/pages#show', id: 'home'
end
