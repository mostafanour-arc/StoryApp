# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @review = @story.reviews.new(review_params)
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
    params.require(:review).permit(:rating, :comment, :story_id, :user_id)
  end
end
