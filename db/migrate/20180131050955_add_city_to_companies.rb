class AddCityToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :city, :string
  end
end
