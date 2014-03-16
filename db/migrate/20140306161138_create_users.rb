class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string 	:username,
								:username_real, 
								:sex,
								:birthdate,
								:e_mail, 
								:password, 
								:question,
								:answer,
								:phone_number,
								:shopping_exp,
								:member_type,
								:mail_address, 
								:city, 
								:address,
								:post_code,
								:advance_payment,
								:latest_log_date	#上次登录时间
      t.timestamps
    end
  end
end
