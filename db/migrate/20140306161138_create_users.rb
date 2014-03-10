class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string 	:username,
								:username_real, 
								:email, 
								:password, 
								:mail_address, 
								:livingCity, 
								:address,
								:birthdate
      t.timestamps
    end
  end
end
