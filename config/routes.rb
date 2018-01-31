Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/hi', to: 'job_post#hi'
  get '/dashboard', to: 'job_post#dashboard', as: 'dashboard'
  get '/post', to: 'job_post#post', as: 'post'
  post '/post', to: 'job_post#savepost'

end
