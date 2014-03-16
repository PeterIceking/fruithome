class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t| #, :primary_key => [:order_id, :fruit_id] do |t|
			t.integer		:order_id,
									:fruit_id,
									:quantity
      t.timestamps
    end
  end
end
