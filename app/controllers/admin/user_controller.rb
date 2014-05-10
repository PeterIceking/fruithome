# -*- encoding: utf-8 -*-
class Admin::UserController < ApplicationController
	include ApplicationHelper
	before_filter :admin_login_required,  :except => [:login,:logout]
	layout :determine_layout
  # layout "empty", :only => [:register, :login]
	# layout "self_center", :except => [:register, :login, :logout]
	def index
	@page_title = "管理员"
	flash[:alert] = ""
	end
	
	def login
		@page_title = "用户登陆"
		flash[:alert] = ""
		# return unless request.post?
		unless request.post?
			# flash[:alert] = "非post，即get"
			return 
		end
		# unless params[:login]
			# flash[:alert] << "kong"
			# return
		# end
		username = params[:login]
		admin_user = AdminUser.where("username = ? or e_mail =?",username,username).first		
		unless admin_user
			flash[:alert] = "用户未注册"
			return
		end
		# flash[:alert] << admin_user.to_yaml
		# self.current_user = user.password_text == params[:password]
		self.current_admin_user = admin_user.authenticate(params[:password])
		# flash[:alert] << current_admin_user.to_yaml
		if current_admin_user
			flash[:notice] = "Logged in successfully".to_s
			# current_user.update_columns({"latest_log_date" => Time.new.getlocal})
			redirect_back_or_default(:controller => 'admin/user', :action => 'index')
		else
			flash[:alert] == "密码错误"
			render :action => "login"
		end
	end
	
	def logout 
		# self.current_user.forget_me if logged_in?
		cookies.delete :auth_token
		reset_session
		flash[:notice] = "You have been logged out."
		redirect_back_or_default(:controller => '/user', :action => 'login')
	end

	def security
	end

	def change_password
		if request.post? and params[:password] and @current_admin_user.authenticate(params[:password][:password_old])
			@current_admin_user.password = params[:password][:password]
			if params[:password][:password] == params[:password][:password_confirmation] && @current_admin_user.save
				flash[:alert] = "<div class='errors'><h5>密码修改成功</h5></div>".html_safe #"注册成功"
				redirect_to :action => "change_password"
			else
				flash[:alert] = errors_for(@current_admin_user, "修改失败，请检查：").html_safe
			end
		end
		# flash.now[:notice] = "Incorrect login!" 
	end

	def edit_security
	end
	
	def update_info
		flash[:alert] =""
		if request.post? and params[:admin_user]
			if @current_admin_user.update_columns(admin_user_update_params)
				flash[:notice] = admin_user_update_params[:username].to_s #"更新成功"
				redirect_to :action => "information"
			else
				flash[:alert] = errors_for(@current_admin_user, "抱歉，请检查输入信息：").html_safe
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
	
	def admin_user_update_params
		params.require(:admin_user).permit(:username, :e_mail, :phone_number)
	end
	
	def determine_layout
		if admin_logged_in? 
			"admin_layout"
		else 
			"empty"
		end
	end
end