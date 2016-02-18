class ProductsController < ApplicationController
	before_action :set_user
	def index
		@products = @user.products.all
	end

	private

	def set_user
		@user = User.find_by(id: params[:user_id])
	end
end
