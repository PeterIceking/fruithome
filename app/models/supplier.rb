class Supplier < ActiveRecord::Base

	has_many :supply_infomations
	has_many :fruits, :through => :supply_infomations
end
