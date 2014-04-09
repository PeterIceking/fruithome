class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
			t.integer		:user_id,
									:status	#0:等待付款,购物车状态;
													#1:已付款，等待发货;
													#2:已发货，等待验收;
													#3:已签收，交易完成，等待评价;
													#4:已评价，订单完成将关闭；
													#9:已完成，正常完成状态
													#10:已取消交易
													#11:退货等;
			t.float			:total_price
      t.timestamps
    end
  end
end
