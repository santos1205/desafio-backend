Rails.application.routes.draw do
  
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :disciplinas_top_da_semana
    end
  end
end
