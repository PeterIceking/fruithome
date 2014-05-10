# -*- encoding: utf-8 -*-
class ApplicationController < ActionController::Base
	include AuthenticatedSystem
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_filter :initialize_cart
	private
	def initialize_cart
		# cart only for loggedin user
		if logged_in?
			@cart = Order.find_or_create_by(user_id:current_user.id, status:0)
		else
			if session[:cart_id]
				@cart = Order.find(session[:cart_id])
			else
				@cart = Order.new(user_id:0, status:0)
				session[:cart_id] = @cart.id
			end
		end
	end
end
