# -*- encoding: utf-8 -*-
class CartController < ApplicationController
	layout "payment_layout"#, :only => :cart
  def index
		# @fruits = Fruit.all.limit(4)
  end
	
	def show
		@order_items = Order.find_by_user_id(1).order_items
		# @fruit = Fruit.first
	end
	def cart
		 # @fruit = Order.first
	end
	def pay
		# @fruit = Fruit.first
	end
end
