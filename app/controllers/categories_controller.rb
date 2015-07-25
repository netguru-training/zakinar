class CategoriesController < ApplicationController
  expose(:category)
  #expose(:notes) { category.notes }

  def show
    @notes = category.notes
  end
end
