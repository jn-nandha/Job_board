class Job < ApplicationRecord

	belongs_to :company, foreign_key: "company_id"
	has_many :inquiries, dependent: :destroy

	# acts_as_taggable_on :category
	# act_as_taggable_on :category

end
