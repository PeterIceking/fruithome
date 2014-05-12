# -*- encoding: utf-8 -*-
class Admin::MemberController < ApplicationController
layout "admin_layout"
include ApplicationHelper
before_filter :admin_login_required
  def new
		@member = User.new
		@page_title = "会员管理"
  end

  def create
		if request.post? and params[:member]
			@member = User.new(member_params)
			if @member.save
				flash[:notice] = member_params[:username].to_s #"添加成功"
				redirect_to :action => "show", :id => @member.id
			else
				flash[:alert] = errors_for(@member, "抱歉，请检查输入信息：").html_safe
				render :action => "new"
			end
		end
  end

  def edit
		@member = User.find(params[:id])
		@page_title = @member.username
  end

  def update
		if request.post? and params[:member]
			@member = User.find(params[:id])
			if @member.update_attribute("status",params[:member][:status])
				flash[:notice] = member_params[:username].to_s #"更新成功"
				redirect_to :action => "show", :id => @member.id
			else
				flash[:alert] = errors_for(@member, "抱歉，请检查输入信息：").html_safe
				render :action => "edit"
			end
		end
  end

  def destroy
		if request.post? and params[:id]
			@member = User.find(params[:id])
			flash[:notice] = "成功删除：#{@member.username}" #"删除成功"
			@member.destroy
			# flash[:alert] = errors_for(@member, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "index"
		end
  end

  def show
		@member = User.find(params[:id])
		@page_title = @member.username
  end

  def index
		@members = User.all
		@page_title = "会员管理"
  end

  def banned
		@members = User.where(status:0)
		@page_title = "已屏蔽会员"
  end
	
	private
	def member_params
		params.require(:member).permit(	:username, 
																		:real_name, 
																		:status)
	end
end
