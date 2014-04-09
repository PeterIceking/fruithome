# -*- encoding: utf-8 -*-
class CartController < ApplicationController
	before_filter :login_required
	layout "payment_layout"#, :only => :cart
  def index
		# @fruits = Fruit.all.limit(4)
  end
	
	def show
		@cart_items = @cart.order_items
		# @fruit = Fruit.first
	end
	def cart
		 # @fruit = Order.first
	end
	def pay
		# @fruit = Fruit.first
	end
end
