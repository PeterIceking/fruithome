class CreateOriginPlaces < ActiveRecord::Migration
  def change
    create_table :origin_places do |t|
			t.string 	:name,
								:description, 
								:super_id
      t.timestamps
    end
  end
end
