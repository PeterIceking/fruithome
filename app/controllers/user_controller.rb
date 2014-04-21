# -*- encoding: utf-8 -*-
class UserController < ApplicationController
	include ApplicationHelper
	before_filter :login_required,  :except => [:register, :login, :logout]
	layout "self_center", :except => [:register, :login, :logout]
	layout "empty", only: [:login, :register]
	def index
		@page_title = "个人中心"
	end
	
	def register
		@page_title = "欢迎注册"
		if request.post? and params[:user]
			@user = User.new(user_params)
			if @user.save && params[:user][:password] == params[:user][:password_confirmation]
				flash[:notice] = user_params[:username].to_s #"注册成功"
				redirect_to :action => "index",  :controller=>"fruit"
			else
				flash[:alert] = errors_for(@user, "抱歉，请检查注册信息：").html_safe
			end
		end
	end
	
	def login
		@page_title = "用户登陆"
		return unless request.post?
		username = params[:login]
		user = User.where("username = ? or e_mail =?",username,username).first
		# self.current_user = user.password_text == params[:password]
		self.current_user = user.authenticate(params[:password])
		if current_user
			if params[:remember_me] == "1"
				self.current_user.remember_me
				cookies[:auth_token] = { :value => self.current_user.remember_token , :expires => self.current_user.remember_token_expires_at }
			end
			flash[:notice] = "Logged in successfully".to_s
			redirect_back_or_default(:controller => '/fruit', :action => 'index')
		end
		# flash.now[:notice] = "Incorrect login!" 
	end
	
	def logout 
		# self.current_user.forget_me if logged_in?
		cookies.delete :auth_token
		reset_session
		flash[:notice] = "You have been logged out."
		redirect_back_or_default(:controller => '/fruit', :action => 'index')
	end

	def information
		if current_user
			@user = current_user
		end
	end
		
	private
	def user_params
		params.require(:user).permit(:username,:e_mail,:password,:password_confirmation)
	end

end