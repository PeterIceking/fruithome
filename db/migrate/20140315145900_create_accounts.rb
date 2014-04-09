class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
			t.integer		:user_id
			t.string		:type #RMB, USD
			t.float			:money #the left usable amount money
      t.timestamps
    end
  end
end
