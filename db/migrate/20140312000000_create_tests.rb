class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests, :primary_key => :number do |t|
			t.string :name, :description
      t.timestamps
    end
  end
end
