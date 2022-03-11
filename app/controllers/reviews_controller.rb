class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if  @review.rating >= 0 && @review.rating <= 5
       @review.save
       render json: @review, status: :created
    else
      render json: {:erros => @review.errors.full_messages }, status: 422
    end  
  end


  private
  def review_params
    params.require(:review).permit(:rating, :comment).merge(user_id: params[:user_id], story_id: params[:story_id])
  end
end