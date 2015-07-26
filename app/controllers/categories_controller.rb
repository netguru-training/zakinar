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

  def destroy
  end

  def assign_to_user
    AssignCategoryToUser.new(current_user, category).call!
    redirect_to root_path
  end

  def unassign_from_user
    UnassignCategoryFromUser.new(current_user, category).call!
    redirect_to root_path
  end
end
