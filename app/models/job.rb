class Job < ApplicationRecord
	has_many :inquiries, dependent: :destroy
end
