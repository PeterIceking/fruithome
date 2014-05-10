# -*- encoding: utf-8 -*-
class User < ActiveRecord::Base
	has_secure_password validations: false
	# before_create :password_validation
	
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
	
	validates :username, 
						:presence => {:message => '请输入用户名'}, 
						:uniqueness => {:message => '用户名已注册，请更换'},
						:format => {:with => /\A[a-z]{#{USERNAME_MIN_LENGTH},#{USERNAME_MAX_LENGTH}}\z/i,
												:message => '用户名格式：应由2-20位大小写英文字符组成！'}
	validates :e_mail, 
						# :presence => {:message => '请输入邮箱'}, 
						:uniqueness => {:message => '邮箱已注册，请更换'},
						:format => {:with => /\A([A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4})\z/i,
												:message => "请输入正确的邮箱！"}
	# 密请使用大小写字母和数字
	validates :password,
						:format => {:with => /\A[a-z0-9]{#{PASSWORD_MIN_LENGTH},#{PASSWORD_MAX_LENGTH}}\z/i,
												:message => "密码格式：应由6-20位大小写英文字符和数字组成！"}	,
						:confirmation => {:if => :password_changed?,
															:message => "密码确认失败"}	
	
	def password_validation
		if self.password != self.password_confirmation
			self.errors.add( :password, self.password)
			self.errors.add( :password_confirmation, "密码确认不匹配")
			false
		end
	end
	
	def password_changed?
		self.password != self.password_confirmation
	end
end