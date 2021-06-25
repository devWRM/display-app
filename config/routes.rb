Rails.application.routes.draw do
  resources :assignments
  resources :schedules
  
  resources :users do
    resources :schedules
  end

  resources :rooms do
    resources :schedules
  end

  resources :types do
    resources :assignments
  end

  # resources :types do
  #   resources :schedules
  # end

  resources :cleanings do
    resources :assignments
  end

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
