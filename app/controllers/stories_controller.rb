# frozen_string_literal: true

class StoriesController < ApplicationController
  def create
    @story = Story.new(story_params)
    if @story.save
      render json: @story, status: :created
    else
      render json: { errors: @story.errors.full_messages }, status: 422
    end
  end

  def index
    @user = User.find(params[:user_id])
    @stories = @user.stories.page(params[:page])
    render json: @stories
  end

  def top
    story_ids = Review.group(:story_id).order('AVG("reviews"."rating") desc').limit(100).pluck(:story_id)
    @stories = Story.find(story_ids)
    render json: @stories
  end

  private

  def story_params
    params.require(:story).permit(:title, :body, :user_id)
  end
end
