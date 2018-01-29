class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.text :message
      t.references :job
      t.references :company

      t.timestamps
    end
  end
end
