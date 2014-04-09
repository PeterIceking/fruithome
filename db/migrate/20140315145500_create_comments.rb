class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
			t.integer		:fruit_id,
									:user_id,
									:content,
									:status
      t.timestamps
    end
  end
end
