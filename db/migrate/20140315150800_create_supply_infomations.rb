class CreateSupplyInfomations < ActiveRecord::Migration
  def change
    create_table :supply_infomations do |t|
			t.integer		:fruit_id,
									:supplier_id,
									:quantity,
									:status	#0:在途; 1:已到达;
			t.float			:price,
									:mail_cost,
									:total_cost
			t.string		:start_date,
									:end_date
      t.timestamps
    end
  end
end
