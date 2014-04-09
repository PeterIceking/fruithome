class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
			t.string 	:username,
								:password, 
								:admin_type, 
								:e_mail
      t.timestamps
    end
  end
end
