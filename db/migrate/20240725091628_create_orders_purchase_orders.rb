class CreateOrdersPurchaseOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders_purchase_orders do |t|
      t.string :order_number
      t.string :supplier
      t.date :order_date
      t.decimal :total_amount
      t.string :status

      t.timestamps
    end
  end
end
