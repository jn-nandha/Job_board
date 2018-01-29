class Inquiry < ApplicationRecord

	belongs_to :job, foreign_key: "job_id"
	belongs_to :company, foreign_key: "company_id"
end
