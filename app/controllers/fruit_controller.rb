# -*- encoding: utf-8 -*-
class FruitController < ApplicationController
	include ApplicationHelper
  def index
		@fruits = Fruit.find([10,15,13,23])
		@fruits_new =  Fruit.order("created_at desc").limit(4)
		@fruits_gift =  Fruit.where(fruit_type_id:3).limit(4)
		@fruits_hot =  Fruit.where(is_hot:"t").limit(4)
		@fruit_special = Fruit.find(11)
  end
	
	def search
		if params[:col] and params[:val]
			return @fruits_search = search_by_col(params[:col],params[:val])
		end
		@key_word, type_names = params[:key_word], []
		FruitType.all.each {|ft| type_names << ft.name}
		if type_names.index @key_word
			@fruits_search = FruitType.find_by_name(@key_word).fruits.paginate(page: params[:page], per_page: 16)
		else
			@fruits_search = Fruit.where("name like ? or brief_introduction like ?", "%#{@key_word}%", "%#{@key_word}%").paginate(page: params[:page], per_page: 16)
		end
	end
	
	def search_by_col(col,val)
		search_hash = {col => val}
		Fruit.where(search_hash).paginate(page: params[:page], per_page: 16)
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
	
	def collect
		if request.post? and params[:id]
			@item = @cart.order_items.find_by_fruit_id(params[:id])
			flash[:notice] = "成功收藏：#{@item.fruit.name}" #"收藏成功"
			Collection.find_or_create_by(user_id:current_user.id, fruit_id:@item.fruit_id)
			# flash[:alert] = errors_for(@fruit, "抱歉，请检查输入信息：").html_safe
			redirect_to request.referer 
		end
  end
end