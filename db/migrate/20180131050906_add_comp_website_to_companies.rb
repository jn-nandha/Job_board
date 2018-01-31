class AddCompWebsiteToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :comp_website, :string
  end
end
