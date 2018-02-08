class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :inquiries
   has_many :jobs, dependent: :destroy

    geocoded_by :city 
   after_validation :geocode , :if => :city_changed? 
end
