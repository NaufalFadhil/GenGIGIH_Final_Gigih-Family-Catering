class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.float :total
      t.string :status
      t.timestamp :order_date
      t.belongs_to :admin

      t.timestamps
    end
  end
end
