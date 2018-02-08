class ProfileController < ApplicationController
	before_action :authenticate_company!
	def latest_job
		@jobs = Job.where(company_id: current_company.id).reverse
		@inqs = Inquiry.joins(:job).where(company_id: current_company).order(:created_at)
	end

	def newjob
		@post = Job.new
	end

	def savejob
		@post = Job.new(post_params)
		@post.status = 'open'
		@post.company_id = current_company.id
		if @post.save!
			redirect_to profile_path
		end
	end

	def stat_chg
		@jb = Job.find(params[:job_id])
		if @jb.status == 'open'
			@jb.status = 'close'
		else
			@jb.status = 'open'
		end
		@jb.save
	end

	private
	def post_params
		params.require(:job).permit(%i[title description job_type category])
	end
end
