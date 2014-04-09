class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
			t.string		:name,
									:phone_number,
									:e_mail,
									:address,
									:city
      t.timestamps
    end
  end
end
