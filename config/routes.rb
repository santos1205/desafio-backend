Rails.application.routes.draw do
  
  devise_for :users
  namespace :api do
    namespace :v1 do      
      resources :top_disciplinas_dia
      resources :questoes_mais_acessadas_semana
      resources :questoes_mais_acessadas_mes
      resources :questoes_mais_acessadas_ano
    end
  end
end
