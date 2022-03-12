# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: :created
    else
      render json: { erros: @review.errors.full_messages }, status: 422
    end
  end

  def index
    @story = Story.find(params[:story_id])
    @reviews = @story.reviews.page(params[:page])
    render json: @reviews
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment).merge(user_id: params[:user_id], story_id: params[:story_id])
  end
end
