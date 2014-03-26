# -*- encoding: utf-8 -*-
class FruitController < ApplicationController
  def index
		@fruits = Fruit.all.limit(4)
  end
	
	def search
		@search_word = "果"
		@fruits_search = Fruit.where("fruit_name like ? or brief_introduction like ?",
																	"%#{@search_word}%", "%#{@search_word}%")
	end
	
	def show
		@fruit = Fruit.first
	end
end