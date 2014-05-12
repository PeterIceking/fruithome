# -*- encoding: utf-8 -*-
class Admin::OrderController < ApplicationController
layout "admin_layout"
include ApplicationHelper
before_filter :admin_login_required
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
		@order_items = @order.order_items
		@page_title = @order.id
  end

  def update
		if request.post? and params[:order]
			@order = Order.find(params[:id])
			
			
			if @order.update_attributes(order_params) and @order.order_items.each {|item| item.update_attributes(price:params[item.id.to_s][:price],quantity:params[item.id.to_s][:quantity])}
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
			@order.status = 9
			if @order.save
				flash[:notice] = "成功取消订单#{@order.id}" #"取消成功"
			end
			# flash[:alert] = errors_for(@order, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "index"
		end
  end

  def show
		@order = Order.find(params[:id])
		@page_title = @order.user_id
  end

  def index
		@orders = Order.where.not(status:[nil,0,9],user_id:[nil,0])
		@page_title = "订单"
  end

  def history
		@orders = Order.where(status:[9]).where.not(user_id:[nil,0])
		@page_title = "订单"
  end

	private
	def order_params
		params.require(:order).permit(:user_id,
																	:consignee_name,
																	:consignee_address,
																	:consignee_phone,
																	:remark,
																	:total_price,
																	:status)
	end
end