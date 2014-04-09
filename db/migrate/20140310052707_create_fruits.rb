class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
			t.integer 		:fruit_type_id,
										:origin_place_id,
										:inventory
			t.string			:name,
										:introduction,
										:brief_introduction,
										:unit		#单位
			t.boolean			:is_hot
			t.float				:price_present,
										:price_history,
										:price_other,
										:discount
      t.timestamps
    end
  end
end
