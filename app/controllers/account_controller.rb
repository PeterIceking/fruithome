# -*- encoding: utf-8 -*-
class AccountController < ApplicationController
	include ApplicationHelper
	layout "self_center", :only => :index
	def index
		@page_title = "个人中心"
	end

	private
	def user_params
		# params.require(:user).permit(:username,:e_mail,:password)
	end

end