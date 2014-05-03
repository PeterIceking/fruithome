# -*- encoding: utf-8 -*-
class Admin::FruitController < ApplicationController
layout "admin_layout"
include ApplicationHelper
  def new
		@fruit = Fruit.new
		@page_title = "水果管理"
  end

  def create
		if request.post? and params[:fruit]
			@fruit = Fruit.new(fruit_params)
			if @fruit.save
				flash[:notice] = fruit_params[:fruit_name].to_s #"添加成功"
				redirect_to :action => "show", :id => @fruit.id
			else
				flash[:alert] = errors_for(@fruit, "抱歉，请检查输入信息：").html_safe
				render :action => "new"
			end
		end
  end

  def edit
		@fruit = Fruit.find(params[:id])
		@page_title = @fruit.fruit_name
  end

  def update
		if request.post? and params[:fruit]
			@fruit = Fruit.find(params[:id])
			if @fruit.update_attributes(fruit_params)
				flash[:notice] = fruit_params[:fruit_name].to_s #"更新成功"
				redirect_to :action => "show", :id => @fruit.id
			else
				flash[:alert] = errors_for(@fruit, "抱歉，请检查输入信息：").html_safe
				render :action => "edit"
			end
		end
  end

  def destroy
		if request.post? and params[:id]
			@fruit = Fruit.find(params[:id])
			flash[:notice] = "成功删除：#{@fruit.fruit_name}" #"删除成功"
			@fruit.destroy
			# flash[:alert] = errors_for(@fruit, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "index"
		end
  end

  def show
		@fruit = Fruit.find(params[:id])
		@page_title = @fruit.fruit_name
  end

  def index
		@fruits = Fruit.all
		@page_title = "类别"
  end
	
	private
	def fruit_params
		params.require(:fruit).permit(:fruit_name, 
																	:fruit_type_id, 
																	:description, 
																	:origin_place, 
																	:price_present, 
																	:price_hirtory, 
																	:price_other)
	end
end
