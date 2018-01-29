class Company < ApplicationRecord
	has_many :job, dependent: :destroy
end

class job < ApplicationRecord

belongs_to :Company
end