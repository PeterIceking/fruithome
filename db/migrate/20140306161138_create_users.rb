class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string 	:username,
								:real_name, 
								:sex,
								:birthdate,
								:e_mail, 
								:password_text, 
								:password_digest, 
								:question,
								:answer,
								:phone_number,
								:shopping_exp,
								:member_type,
								:city, 
								:post_code,
								:advance_payment,
								:latest_log_date	#上次登录时间
      t.timestamps
    end
  end
end
