# -*- encoding: utf-8 -*-
class UserController < ApplicationController
	include ApplicationHelper
	before_filter :login_required,  :except => [:register, :login, :logout]
	layout :determine_layout
  # layout "empty", :only => [:register, :login]
	# layout "self_center", :except => [:register, :login, :logout]
	def index
	@page_title = "个人中心"
	end
	
	def register
		@page_title = "欢迎注册"
		flash[:alert] = ""
		if request.post? and params[:user]
			@user = User.new(user_params)
			@user.status = "1"
			if params[:user][:password] == params[:user][:password_confirmation] && @user.save
				flash[:notice] = user_params[:username].to_s #"注册成功"
				redirect_to :action => "index",  :controller=>"fruit"
			else
				flash[:alert] = errors_for(@user, "注册失败，请检查：").html_safe
			end
		end
	end
	
	def login
		@page_title = "用户登陆"
		flash[:alert] = ""
		return unless request.post?
		username = params[:login]
		user = User.where("username = ? or e_mail =?",username,username).first		
		unless user
			flash[:alert] = "用户未注册" 
			return
		end
		# self.current_user = user.password_text == params[:password]
		self.current_user = user.authenticate(params[:password])
		if current_user
			if params[:remember_me] == "1"
				self.current_user.remember_me
				cookies[:auth_token] = { :value => self.current_user.remember_token , :expires => self.current_user.remember_token_expires_at }
			end
			# flash[:notice] = "Logged in successfully".to_s
			current_user.update_columns({"latest_log_date" => Time.new.getlocal})
			redirect_back_or_default(:controller => '/fruit', :action => 'index')
		else
			flash[:alert] = "密码错误"
			render :action => "login"
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
	end

	def security
	end

	def change_password
		if request.post? and params[:password] and @current_user.authenticate(params[:password][:password_old])
			@current_user.password = params[:password][:password]
			if params[:password][:password] == params[:password][:password_confirmation] && @current_user.save
				flash[:alert] = "<div class='errors'><h5>密码修改成功</h5></div>".html_safe #"注册成功"
				redirect_to :action => "change_password"
			else
				flash[:alert] = errors_for(@current_user, "修改失败，请检查：").html_safe
			end
		end
		# flash.now[:notice] = "Incorrect login!" 
	end

	def update_mail_address
		if request.post? and params[:mail_addresses]
		@current_user.mail_addresses
		params[:mail_addresses].each_slice(2) do |mail_add|
			if mail_add[0][0].split("_").length <= 1
				MailAddress.create!(user_id:@current_user.id, address:mail_add[0][1], post_code:mail_add[1][1]) if not mail_add[0][1].eql? ""
			else
				ma = MailAddress.find(mail_add[0][0].split("_")[1])
				ma.update(address:mail_add[0][1], post_code:mail_add[1][1]) unless mail_add[0][1].eql?(ma.address) and mail_add[1][1].eql?(ma.post_code)
			end
		end
		end
	end
	
	def edit_info
	end
	
	def edit_security
	end
	
	def update_info
		flash[:alert] =""
		if request.post? and params[:user]
			if @current_user.update_columns(user_update_params)
				flash[:notice] = user_update_params[:username].to_s #"更新成功"
				redirect_to :action => "information"
			else
				flash[:alert] = errors_for(@current_user, "抱歉，请检查输入信息：").html_safe
				render :action => "edit_info"
			end
		end
	end
	
	def update_security
		flash[:alert] =""
		if request.post? and params[:user]
			if @current_user.update_columns(user_update_params)
				# flash[:notice] = user_update_params[:username].to_s #"更新成功"
				redirect_to :action => "security"
			else
				flash[:alert] = errors_for(@current_user, "抱歉，请检查输入信息：").html_safe
				render :action => "edit_security"
			end
		end
	end
		
	private
	def user_params
		params.require(:user).permit(:username,:e_mail,:password,:password_confirmation)
	end
	
	def user_update_params
		params.require(:user).permit(:username, :real_name, :sex, :birthdate, :e_mail, :phone_number, :city, :question, :answer)
	end
	
	def determine_layout
		if logged_in? 
			"self_center"
		else 
			"empty"
		end
	end
end