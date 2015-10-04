class QuoteunquoteyelpsController < ApplicationController

def index
    @quoteunquoteyelps = Quoteunquoteyelp.all
  end

  def show
    @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])
  end

  def new
    @quoteunquoteyelp = Quoteunquoteyelp.new
  end

  def edit
    @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])
  end

  def create
    @quoteunquoteyelp = Quoteunquoteyelp.new(quoteunquoteyelp_params)

    if @quoteunquoteyelp.save
      redirect_to quoteunquoteyelps_url
    else
      render :new
    end
  end

  def update
    @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])

    if @quoteunquoteyelp.update_attributes(quoteunquoteyelp_params)
      redirect_to quoteunquoteyelp_path(@quoteunquoteyelp)
    else
      render :edit
    end
  end

  def destroy
    @quoteunquoteyelp = Quoteunquoteyelp.find(params[:id])
    @quoteunquoteyelp.destroy
    redirect_to quoteunquoteyelps_path
  end

  private
  def quoteunquoteyelp_params
    params.require(:quoteunquoteyelp).permit(:name, :description, :year, :url, :photourl)
  end
end