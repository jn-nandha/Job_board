class CreateInqueries < ActiveRecord::Migration[5.1]
  def change
    create_table :inqueries do |t|
      t.text :message

      t.timestamps
    end
  end
end
