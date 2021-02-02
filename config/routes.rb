Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index', as: :root

  resources :movies, only: [:index, :show]


  # root to: welcome_path
end
