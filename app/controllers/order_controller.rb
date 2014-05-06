# -*- encoding: utf-8 -*-
class OrderController < ApplicationController
	before_filter :login_required

	
	layout "self_center"
  def index
		@orders = Order.where("user_id =? and status != 0", current_user.id)
  end
	
	def show
		# @fruit = Fruit.first
	end
	def cart
		 # @fruit = Order.first
	end
	def pay
		@page_title = "确认订单"
		@order_items = @cart.order_items
		# @fruit = Fruit.first
		render :layout => "payment_layout"
	end
end
