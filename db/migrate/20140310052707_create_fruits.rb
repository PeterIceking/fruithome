class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
			t.integer 		:fruit_type_id,
										:inventory_quantity
			t.string			:fruit_name,
										:origin_place,
										:introduction,
										:brief_introduction,
										:unit,	#单位
										:add_date
			t.boolean			:is_hot
			t.float				:price_present,
										:price_history,
										:price_other,
										:discount
      t.timestamps
    end
  end
end
