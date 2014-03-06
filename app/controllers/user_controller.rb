# -*- encoding: utf-8 -*-
class UserController < ApplicationController
  def index
		@page_title = "欢迎注册"
  end
	def register
		@page_title = "欢迎注册"
		if request.post? and params[:user]
			@user = User.new(user_params)
			if @user.save
				flash[:alert] = "注册成功"
				redirect_to :action => "index",  :controller=>"index"
			end
		end
	end


	private
	def user_params
		params.require(:user).permit(:username,:email,:password)
	end

end