MetadataEditor::Application.routes.draw do
  resources :repositories
  resources :records

  root :to => 'repositories#index'
end
