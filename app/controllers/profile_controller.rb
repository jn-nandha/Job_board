class ProfileController < ApplicationController
	def latest_job
		@jobs = Job.where(company_id: current_company.id).reverse
	end

	def onlytype(type)
		Job.where(job_type: "#{type}")
	end

	def newjob
		@post = Job.new
	end

	def savejob
		@post = Job.new(post_params)
		@post.status = 'start'
		@post.company_id = current_company.id
		if @post.save!
			redirect_to profile_path
		end
	end


	private
	def post_params
		params.require(:job).permit(%i[title description job_type category])
	end
end
