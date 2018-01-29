class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :type
      t.string :status
      t.string :category
      t.references :company

      t.timestamps
    end
  end
end
