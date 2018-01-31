class AddCompNameToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :comp_name, :string
  end
end
