class IdeasController < ApplicationController

  def index
  end

  def new
  end

  def create
    @category = Category.new(category_params)
    @idea = Idea.new(idea_params)
    if @category.name.exists?
      
  end

  def category_params
    params.require(:category).permit(:name)
  end

  def idea_params
    params.require(:idea).permit(:body).merge(category_id: current_category.id)
  end
end
