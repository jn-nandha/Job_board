class HomeController < ApplicationController

	def dashboard
		if params[:job] == nil || params[:job][:job_type] == 'all'
			@jobs = Job.where({status: 'start'}).reverse
		else
			@jobs = Job.where({job_type: params[:job][:job_type]}).reverse
		end
	end

	def help
	end
end
