class CreateMailAddresses < ActiveRecord::Migration
  def change
    create_table :mail_addresses do |t|
			t.integer		:user_id
			t.string		:address
      t.timestamps
    end
  end
end
