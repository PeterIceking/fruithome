# -*- encoding: utf-8 -*-
class User < ActiveRecord::Base
	has_secure_password validations: false
	
	has_many	:collections
	has_many	:consultations
	has_many	:comments
	has_many	:orders
	has_many	:mail_addresses
	has_many	:accounts
	
	USERNAME_MIN_LENGTH = 2
	USERNAME_MAX_LENGTH = 20
	USERNAME_RANGE = USERNAME_MIN_LENGTH..USERNAME_MAX_LENGTH
	PASSWORD_MIN_LENGTH = 6
	PASSWORD_MAX_LENGTH = 20
	PASSWORD_RANGE = PASSWORD_MIN_LENGTH..PASSWORD_MAX_LENGTH
	e_mail_MAX_LENGTH = 30
	
	validates_uniqueness_of :username, :e_mail
	validates_presence_of :username, :e_mail, :password
	validates_length_of :username, :within => USERNAME_RANGE
	validates_length_of :password, :within => PASSWORD_RANGE
	validates_length_of :e_mail, :maximum => e_mail_MAX_LENGTH
	validates_format_of :e_mail, 
											:with => /\A[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}\z/i,
											:message => "请确认邮箱格式正确！"
	validates_format_of :username, 
											:with => /\A\z/i,
											:message => "请确认用户名格式正确！"
	# 密请使用大小写字母和数字
	validates_format_of :password, 
											:with => /\A[a-z0-9]{#{PASSWORD_MIN_LENGTH},#{PASSWORD_MAX_LENGTH}}\z/i,
											:message => "请确认密码格式正确！"											
end