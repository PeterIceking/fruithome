class FruitType < ActiveRecord::Base

	TypeName_MIN_LENGTH = 1
	TypeName_MAX_LENGTH = 20
	TypeName_RANGE = TypeName_MIN_LENGTH..TypeName_MAX_LENGTH
	TypeDescription_MIN_LENGTH = 12
	TypeDescription_MAX_LENGTH = 200
	TypeDescription_RANGE = TypeDescription_MIN_LENGTH..TypeDescription_MAX_LENGTH
	
	validates :type_name,	:presence => true, 
												:uniqueness => true, 
												:length => { :within => TypeName_RANGE}
	validates	:type_description,
												:length => { :within => TypeDescription_RANGE}
	# 添加super_type_id规则，或为空，或 :in => type.id
	#	validates	:super_type_id, :presence => { :if => }
end