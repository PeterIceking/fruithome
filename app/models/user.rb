# -*- encoding: utf-8 -*-
class User < ActiveRecord::Base

	has_many :mail_adresses
	has_many :accounts
	has_many :orders
	has_many :comments
	
	# USERNAME_MIN_LENGTH = 2
	# USERNAME_MAX_LENGTH = 20
	# USERNAME_RANGE = USERNAME_MIN_LENGTH..USERNAME_MAX_LENGTH
	# PASSWORD_MIN_LENGTH = 6
	# PASSWORD_MAX_LENGTH = 20
	# PASSWORD_RANGE = PASSWORD_MIN_LENGTH..PASSWORD_MAX_LENGTH
	# EMAIL_MAX_LENGTH = 30
	
	# validates_uniqueness_of :username, :email
	# validates_presence_of :username, :email, :password
	# validates_length_of :username, :within => USERNAME_RANGE
	# validates_length_of :password, :within => PASSWORD_RANGE
	# validates_length_of :email, :maximum => EMAIL_MAX_LENGTH
	# validates_format_of :email, 
											# :with => /\A[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}\z/i,
											# :message => "请确认邮箱格式正确！"
	~ validates_format_of :username, 
											~ :with => /\A\z/i,
											~ :message => "请确认用户名格式正确！"
	~ #密请使用大小写字母和数字
	# validates_format_of :password, 
											# :with => /\A[a-z0-9]{#{PASSWORD_MIN_LENGTH},#{PASSWORD_MAX_LENGTH}}\z/i,
											# :message => "请确认密码格式正确！"											
end