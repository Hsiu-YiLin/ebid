class ProductsController < ApplicationController
	before_action :set_user
	def index
		@products = @user.products.all
	end

	def show
		@product = Product.find_by(id: params[:id])
	end

	private

	def set_user
		@user = User.find_by(id: params[:user_id])
	end
end
