class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t| #, :primary_key => [:order_id, :fruit_id] do |t|
			t.integer		:flag,
									:description
      t.timestamps
    end
  end
end
