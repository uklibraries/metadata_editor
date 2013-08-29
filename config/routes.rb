MetadataEditor::Application.routes.draw do
  devise_for :users

  resources :repositories
  resources :records

  root :to => 'repositories#index'
end
