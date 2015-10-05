class ReviewsController < ApplicationController
  before_filter :load_quoteunquoteyelp


  def show
	@review = Review.find(params[:id])

  end

  def create
  	@review = @quoteunquoteyelp.reviews.build(review_params)
      if @review.save
      redirect_to quoteunquoteyelps_path, notice: 'Review created successfully'
    else
      render 'quoteunquoteyelp/show'
    end
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

	private
	  def review_params
	    params.require(:review).permit(:comment, :quoteunquoteyelp_id)
	  end

	  def load_quoteunquoteyelp
	    @quoteunquoteyelp = Quoteunquoteyelp.find(params[:quoteunquoteyelp_id])
	  end
end