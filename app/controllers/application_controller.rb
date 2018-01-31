class ApplicationController < ActionController::Base
	before_action :authenticate_company!
  protect_from_forgery with: :exception
end
