class JobPostController < ApplicationController

	def dashboard 
		@post = Job.where({status: 'start'}).last(10)
	end

	def post
		@post = Job.new
	end

	def savepost
		@post = Job.new(post_params)
		@post.company_id = 1
		@post.status = "start"
		if @post.save!
			redirect_to dashboard_path
		end
	end

	def cmp_post(cid) #return all job post of particular company
		@post = Job.where({company_id: cid})
	end

	def cmp_post(cid,stat) #return all job post of particular company and it's status
		@post = Job.where({company_id: cid, status: stat})
	end	


	private
	def post_params()
		params.require(:job).permit(%i[title description job_type status category ])
	end

end
