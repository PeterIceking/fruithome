class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
			t.integer	:fruit_id,
								:user_id,
								:status		#0:未审核
													#1:已审核
			t.string 	:question,
								:answer
      t.timestamps
    end
  end
end
