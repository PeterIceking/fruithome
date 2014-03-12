class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
			t.integer		:user_id,
									:fruit_id,
									:fruit_amount,
									:status
			t.string		:order_date
      t.timestamps
    end
  end
end
