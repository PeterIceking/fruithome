class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
			t.string		:fruit_name,
									:origin_place,
									:description
			t.integer 	:fruit_type_id
			t.float			:price_present,
									:price_hirtory,
									:price_other
      t.timestamps
    end
  end
end
