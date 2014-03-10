class CreateFruitTypes < ActiveRecord::Migration
  def change
    create_table :fruit_types do |t|
			t.string		:type_name,
									:type_description
			t.integer		:super_tpye_id
      t.timestamps
    end
  end
end
