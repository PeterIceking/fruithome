class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
			t.integer		:user_id,
									:status	#0:等待付款; 1:已付款等待发货; 2:已发货等待验收; 3:交易完成; 4:交易关闭; 5:;
			t.string		:order_date
      t.timestamps
    end
  end
end
