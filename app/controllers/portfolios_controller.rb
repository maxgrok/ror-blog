class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new(title: params[:title], subtitle: params[:subtitle], body: params[:body], main_image: params[:main_image], thumb_image:params[:thumb_image])
	end

  # POST /portfolios
  # POST /portfolios.json
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Your portfolio item is now live.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	@portfolio_item = Portfolio.find(params[:id])
  end
  

end
