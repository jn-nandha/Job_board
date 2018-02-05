class ProfileController < ApplicationController
	def latest_job
		@jobs = Job.where(company_id: current_company.id).reverse
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
		@jb = Job.find(1)
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
