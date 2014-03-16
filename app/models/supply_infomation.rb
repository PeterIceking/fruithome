class SupplyInfomation < ActiveRecord::Base

	belongs_to :fruit
	belongs_to :supplier
	
end
