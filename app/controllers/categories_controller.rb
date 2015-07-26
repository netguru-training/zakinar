class CategoriesController < ApplicationController
  expose(:category)
  expose(:notes) { category.notes }
end
