class HomeController < ApplicationController
	
	def dashboard
		if params[:job] == nil 
			@jobs = Job.where(status: 'open').order(updated_at: :desc)
		else
			if params[:job][:job_type] != 'all'
				@jobs = Job.joins(:company).where("status = ? and job_type = ? and companies.city LIKE ?","open",params[:job][:job_type],params[:job][:city]+'%').order(updated_at: :desc)
			else
				@jobs = Job.joins(:company).where("status = ? and companies.city LIKE ?","open",params[:job][:city]+'%').order(updated_at: :desc)
			end
		end
	end

	def help
	end
end
