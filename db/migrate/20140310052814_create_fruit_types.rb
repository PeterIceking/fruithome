class CreateFruitTypes < ActiveRecord::Migration
  def change
    create_table :fruit_types do |t|
			t.integer		:super_id
			t.string		:type_name,
									:description
      t.timestamps
    end
  end
end
