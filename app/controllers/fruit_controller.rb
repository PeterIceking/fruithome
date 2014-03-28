# -*- encoding: utf-8 -*-
class FruitController < ApplicationController
include ApplicationHelper
  def index
		@fruits = Fruit.all.limit(4)
  end
	
	def search
		@search_word = "果"
		@fruits_search = Fruit.where("name like ? or brief_introduction like ?",
																	"%#{@search_word}%", "%#{@search_word}%")
	end
	
	def show
		@fruit = Fruit.find(params[:id])
		@page_title = @fruit.name
	end
	
	def add_to_cart
		# if request.post? and params[:fruit]
			@fruit = Fruit.find(params[:id])
			item = Order.find_or_create_by(user_id:1).order_items.find_or_create_by(fruit_id: params[:id])
			OrderItem.update(item.id, quantity: item.quantity.to_i + 1)
			render :action => "show"
		# end
	end
end