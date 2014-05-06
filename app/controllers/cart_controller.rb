# -*- encoding: utf-8 -*-
class CartController < ApplicationController
	before_filter :login_required
	layout "payment_layout"#, :only => :cart
  def index
		# @fruits = Fruit.all.limit(4)
  end
	
	def show
		@page_title = "我的购物车"
		@cart_items = @cart.order_items
		# @fruit = Fruit.first
	end
	def cart
		 # @fruit = Order.first
	end
	def pay
		# @fruit = Fruit.first
	end
	
	def destroy
		if request.post? and params[:id]
			@item = @cart.order_items.find_by_fruit_id(params[:id])
			flash[:notice] = "成功删除：#{@item.fruit.name}" #"删除成功"
			@item.destroy
			# flash[:alert] = errors_for(@fruit, "抱歉，请检查输入信息：").html_safe
			redirect_to :action => "show"
		end
  end
end
