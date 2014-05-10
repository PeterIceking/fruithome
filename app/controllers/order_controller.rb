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
	def pay_success
		@page_title = "提交订单"
		@order_items = @cart.order_items
		@cart.status = 1
		@cart.consignee_name = @current_user.username
		@cart.consignee_address = @current_user.mail_addresses.first.address
		@cart.consignee_phone = @current_user.phone_number
		@cart.save
		render action:"pay_success", :layout => "payment_layout"
	end
	def collection
	@collections = Collection.where(user_id:@current_user.id)
	end
	def cancel_collection
		if request.post? and params[:id]
			@item = Collection.find_by_fruit_id(params[:id])
			flash[:notice] = "成功删除：#{@item.fruit.name}" #"删除成功"
			@item.destroy
			# flash[:alert] = errors_for(@fruit, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "collection"
		end
	end
end
