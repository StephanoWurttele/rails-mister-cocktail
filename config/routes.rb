Rails.application.routes.draw do
  resources :cocktails, only: ['index', 'show', 'create'] do
    resources :doses, only: ['new', 'create']
  end
  resources :doses, only: ['destroy']
end