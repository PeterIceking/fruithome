class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
			t.string 	:username,
								:password, 
								:e_mail
      t.timestamps
    end
  end
end
