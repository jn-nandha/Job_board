Rails.application.routes.draw do
  
  devise_for :companies, controllers: {
        registrations: 'companies/registrations'
      }

    root 'profile#latest_job'
    get 'profile', to: 'profile#latest_job'
    get 'profile/new', to: 'profile#newjob'
    post 'profile/new', to: 'profile#savejob'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
