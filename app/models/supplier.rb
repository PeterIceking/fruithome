class Supplier < ActiveRecord::Base

	has_many :supply_infomations
	has_many :fruitss, :through => :supply_infomations
end
