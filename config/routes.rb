Rails.application.routes.draw do
  resources :statuses
  resources :schedules

  resources :cleanings do
    resources :schedules
  end

  resources :users do
    resources :schedules
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
