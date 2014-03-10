# -*- encoding: utf-8 -*-
class UserController < ApplicationController
	include ApplicationHelper
	def index
		@page_title = "欢迎注册"
	end
	
	def register
		@page_title = "欢迎注册"
		@user = User.new
		if request.post? and params[:user]
			@user = User.new(user_params)
			if @user.save
				flash[:notice] = user_params[:username].to_s #"注册成功"
				redirect_to :action => "index",  :controller=>"index"
			else
				flash[:alert] = errors_for(@user, "抱歉，请检查注册信息：").html_safe
			end
		end
	end


	private
	def user_params
		params.require(:user).permit(:username,:email,:password)
	end

end