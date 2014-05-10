class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
			t.integer		:fruit_id,
									:order_id,
									:user_id,
									:status
			t.string		:content
      t.timestamps
    end
  end
end
