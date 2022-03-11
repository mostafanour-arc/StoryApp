class StoriesController < ApplicationController

  def create
    @story = Story.new(story_params)
    if @story.save
      render json: @story, status: :created
    else
      render json: { :errors => @story.errors.full_messages }, status: 422 
    end
  end
  
  def index
    @user = User.find_by(id: params[:user_id])
    @stories = @user.stories.page(params[:page])
    render json: @stories
  end

  def top_stories
     @avg = Review.group(:story_id).average("rating")
     total_rating = 0
     @avg.each do |average|
       total_rating += average[1]
     end
     @stories = Story.joins(:reviews).where('rating >= ?', total_rating/@avg.size).order('rating desc').page(params[:page]).distinct
    render json: @stories 
  end

  private
  def story_params
    params.require(:story).permit(:title, :body).merge(user_id: params[:user_id])
  end
end