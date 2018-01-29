class Company < ApplicationRecord

	has_many :jobs, dependent: :destroy
	has_many :inquiries, dependent: :destroy

end
