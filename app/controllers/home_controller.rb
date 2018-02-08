class HomeController < ApplicationController
	
	def dashboard
		if params[:job] == nil 
			@jobs = Job.where(status: 'open').order(updated_at: :desc)
		else
			if params[:job][:city] != ""
				@ct = Geokit::Geocoders::GoogleGeocoder.geocode("#{params[:job][:city]}").city
			else
				@ct = ""
			end

			if params[:job][:job_type] != 'all'
				@jobs = Job.joins(:company).where("status = ? and job_type = ? and companies.city LIKE ?","open",params[:job][:job_type],@ct + '%').order(updated_at: :desc)
			else
				@jobs = Job.joins(:company).where("status = ? and companies.city LIKE ?","open",@ct + '%').order(updated_at: :desc)
			end
		end
		respond_to do |format|
			format.js
			format.html
		end
	end

	def help
	end
end
