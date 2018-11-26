class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new(title: params[:title], subtitle: params[:subtitle], body: params[:body], main_image: params[:main_image], thumb_image:params[:thumb_image])
		@portfolio_item.save
		@portfolio_item
	end

	def create
		@portfolio_item = Portfolio.create(params[:title, :subtitle, :body, :main_image, :thumb_image])
	end

end
