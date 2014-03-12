# -*- encoding: utf-8 -*-
class Admin::OrderController < ApplicationController
include ApplicationHelper
  def new
		@order = Order.new
		@page_title = "订单管理"
  end

  def create
		if request.post? and params[:order]
			@order = Order.new(order_params)
			if @order.save
				flash[:notice] = order_params[:user_id].to_s #"添加成功"
				redirect_to :action => "show", :id => @order.id
			else
				flash[:alert] = errors_for(@order, "抱歉，请检查输入信息：").html_safe
				render :action => "new"
			end
		end
  end

  def edit
		@order = Order.find(params[:id])
		@page_title = @order.user_id
  end

  def update
		if request.post? and params[:order]
			@order = Order.find(params[:id])
			if @order.update_attributes(order_params)
				flash[:notice] = order_params[:user_id].to_s #"更新成功"
				redirect_to :action => "show", :id => @order.id
			else
				flash[:alert] = errors_for(@order, "抱歉，请检查输入信息：").html_safe
				render :action => "edit"
			end
		end
  end

  def destroy
		if request.post? and params[:id]
			@order = Order.find(params[:id])
			flash[:notice] = "成功删除：#{@order.user_id}，#{@order.fruit_id}" #"删除成功"
			@order.destroy
			# flash[:alert] = errors_for(@order, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "index"
		end
  end

  def show
		@order = Order.find(params[:id])
		@page_title = @order.user_id
  end

  def index
		@orders = Order.all
		@page_title = "订单"
  end
	
	private
	def order_params
		params.require(:order).permit(:user_id,
																	:fruit_id,
																	:fruit_amount,
																	:status,
																	:order_date)
	end
end
