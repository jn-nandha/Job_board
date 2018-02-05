Rails.application.routes.draw do
  
  devise_for :companies, controllers: {
        registrations: 'companies/registrations'
      }

    root 'home#dashboard'
    post '/', to: 'home#dashboard'

    get 'profile', to: 'profile#latest_job'
    get 'profile/new', to: 'profile#newjob'
    post 'profile/new', to: 'profile#savejob'
    get 'stat_chg', to: 'profile#stat_chg'

    get 'inquiry', to: 'inquiries#showinq' 
    get 'inquiry/new', to: 'inquiries#postinquiry'
    post 'inquiry/new', to: 'inquiries#create'

    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
