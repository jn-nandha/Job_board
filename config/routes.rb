Rails.application.routes.draw do
  
  devise_for :companies, controllers: {
        registrations: 'companies/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
