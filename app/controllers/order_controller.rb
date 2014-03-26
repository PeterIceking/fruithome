# -*- encoding: utf-8 -*-
class OrderController < ApplicationController
	layout "self_center"
  def index
		# @fruits = Fruit.all.limit(4)
  end
	
	def show
		# @fruit = Fruit.first
	end
	def cart
		 # @fruit = Order.first
	end
	def pay
		# @fruit = Fruit.first
	end
end
