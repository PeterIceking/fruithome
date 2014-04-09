class Consultation < ActiveRecord::Base
	belongs_to	:fruit
	belongs_to	:user
	
end
