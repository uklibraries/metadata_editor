MetadataEditor::Application.routes.draw do
  devise_for :users

  resources :repositories
  resources :records
  resources :members do
    member do
      put 'toggle_manager'
      put 'toggle_activity'
    end
  end

  root :to => 'high_voltage/pages#show', id: 'home'
end
