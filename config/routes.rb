MetadataEditor::Application.routes.draw do
  devise_for :users

  resources :creators
  resources :repositories
  resources :records
  resources :sources
  resources :members do
    member do
      put 'toggle_manager'
      put 'toggle_activity'
    end
  end
  resources :spatial_coverages

  root :to => 'high_voltage/pages#show', id: 'home'
end
