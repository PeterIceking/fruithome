# -*- encoding: utf-8 -*-
class Admin::FruitTypeController < ApplicationController
include ApplicationHelper
  def new
		@fruit_type = FruitType.new
		@page_title = "类别管理"
  end

  def create
		if request.post? and params[:fruit_type]
			@fruit_type = FruitType.new(fruit_type_params)
			if @fruit_type.save
				flash[:notice] = fruit_type_params[:type_name].to_s #"添加成功"
				redirect_to :action => "show", :id => @fruit_type.id
			else
				flash[:alert] = errors_for(@fruit_type, "抱歉，请检查输入信息：").html_safe
				redirect_to :action => "new"
			end
		end
  end

  def edit
		@fruit_type = FruitType.find(params[:id])
		@page_title = @fruit_type.type_name
  end

  def update
		if request.post? and params[:fruit_type]
			@fruit_type = FruitType.find(params[:id])
			if @fruit_type.update_attributes(fruit_type_params)
				flash[:notice] = fruit_type_params[:type_name].to_s #"更新成功"
				redirect_to :action => "show", :id => @fruit_type.id
			else
				flash[:alert] = errors_for(@fruit_type, "抱歉，请检查输入信息：").html_safe
				render :action => "edit"
			end
		end
  end

  def destroy
		if request.post? and params[:id]
			@fruit_type = FruitType.find(params[:id])
			flash[:notice] = "成功删除：#{@fruit_type.type_name}" #"删除成功"
			@fruit_type.destroy
			# flash[:alert] = errors_for(@fruit_type, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "index"
		end
  end

  def show
		@fruit_type = FruitType.find(params[:id])
		@page_title = @fruit_type.type_name
  end

  def index
		@fruit_types = FruitType.all
		@page_title = "类别"
  end
	
	private
	def fruit_type_params
		params.require(:fruit_type).permit( :type_name, 
																				:type_description, 
																				:super_type_id)
	end
end
