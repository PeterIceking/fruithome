# -*- encoding: utf-8 -*-
class FruitController < ApplicationController
	include ApplicationHelper
  def index
		@fruits = Fruit.all.limit(4)
  end
	
	def search
		@key_word = params[:key_word]
		@fruits_search = Fruit.where("name like ? or brief_introduction like ?",
																	"%#{@key_word}%", "%#{@key_word}%")
	end
	
	def show
		@fruit = Fruit.find(params[:id])
		@page_title = @fruit.name
	end
	
	def add_to_cart
		# if request.post? and params[:fruit]
			@fruit = Fruit.find(params[:id])
			item = @cart.order_items.find_or_create_by(fruit_id: params[:id])
			OrderItem.update(item.id, quantity: item.quantity.to_i + params[:num].to_i)
			render :action => "show"
		# end
	end
end