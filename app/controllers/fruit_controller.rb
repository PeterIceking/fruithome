# -*- encoding: utf-8 -*-
class FruitController < ApplicationController
	include ApplicationHelper
  def index
		@fruits = Fruit.all.limit(4)
  end
	
	def search
		@key_word, type_names = params[:key_word], []
		FruitType.all.each {|ft| type_names << ft.name}
		if type_names.index @key_word
			@fruits_search = FruitType.find_by_name(@key_word).fruits.paginate(page: params[:page], per_page: 16)
		else
			@fruits_search = Fruit.where("name like ? or brief_introduction like ?", "%#{@key_word}%", "%#{@key_word}%").paginate(page: params[:page], per_page: 16)
		end
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