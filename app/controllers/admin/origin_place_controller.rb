# -*- encoding: utf-8 -*-
class Admin::OriginPlaceController < ApplicationController
layout "admin_layout"
include ApplicationHelper
before_filter :admin_login_required
  def new
		@origin_place = OriginPlace.new
		@page_title = "产地"
  end

  def create
		if request.post? and params[:origin_place]
			@origin_place = OriginPlace.new(origin_place_params)
			if @origin_place.save
				flash[:notice] = origin_place_params[:name].to_s #"添加成功"
				redirect_to :action => "show", :id => @origin_place.id
			else
				flash[:alert] = errors_for(@origin_place, "抱歉，请检查输入信息：").html_safe
				redirect_to :action => "new"
			end
		end
  end

  def edit
		@origin_place = OriginPlace.find(params[:id])
		@page_title = @origin_place.name
  end

  def update
		if request.post? and params[:origin_place]
			@origin_place = OriginPlace.find(params[:id])
			if @origin_place.update_attributes(origin_place_params)
				flash[:notice] = origin_place_params[:name].to_s #"更新成功"
				redirect_to :action => "show", :id => @origin_place.id
			else
				flash[:alert] = errors_for(@origin_place, "抱歉，请检查输入信息：").html_safe
				render :action => "edit"
			end
		end
  end

  def destroy
		if request.post? and params[:id]
			@origin_place = OriginPlace.find(params[:id])
			flash[:notice] = "成功删除：#{@origin_place.name}" #"删除成功"
			@origin_place.destroy
			# flash[:alert] = errors_for(@origin_place, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "index"
		end
  end

  def show
		@origin_place = OriginPlace.find(params[:id])
		@page_title = @origin_place.name
  end

  def index
		@origin_places = OriginPlace.all
		@page_title = "产地"
  end
	
	private
	def origin_place_params
		params.require(:origin_place).permit( :name, 
																				:description, 
																				:super_id)
	end
end
