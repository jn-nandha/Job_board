class InquiriesController < ApplicationController
	before_action :authenticate_company!
	def postinquiry
		@jb = Job.where(id: params[:job_id])
		if @jb.length > 0 and @jb[0][:company_id] != current_company.id
			@inq = Inquiry.new
			@per_inq = inq_post(params[:job_id],current_company.id)
		else
			redirect_to root_path
		end
	end
	def index
	end
	def create
		@inq = Inquiry.new(user_params)
		@inq.job_id = user_params[:job_no]
		@inq.company_id = current_company.id
		if @inq.save!
			redirect_to inquiry_new_path({job_id: @inq.job_id})
		end
	end
	def showinq
		@jb = Job.where("id = ?",params[:job_id])
		if @jb.length == 0 || @jb[0][:company_id] != current_company.id
			redirect_to profile_path
		end
		@iq = Inquiry.joins(:company).where({job_id: params[:job_id]})
	end
  	def inq_post(jid,cid)  #return all inquiry that had a job_id given
  		Inquiry.where({job_id: jid, company_id: cid})
  	end
  	
  	private
  	def user_params
  		params.require(:inquiry).permit(:message, :job_no)
  	end
  end