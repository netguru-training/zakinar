class CategoriesController < ApplicationController
  expose(:category)
  expose(:notes) { category.notes }
  respond_to :json, :html

  def index
    @categories = Category.all
    render :json => @categories
  end

  def show
    @notes = category.notes
  end
end
