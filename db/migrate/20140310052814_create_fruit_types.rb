class CreateFruitTypes < ActiveRecord::Migration
  def change
    create_table :fruit_types do |t|
			t.string		:name,
									:description
			t.integer		:super_id
      t.timestamps
    end
  end
end
