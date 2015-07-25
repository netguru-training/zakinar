class DashboardController < ApplicationController
  expose(:my_categories) { fetch_my_categories }
  expose(:other_categories) { Category.other_categories(fetch_other_categories_ids) }

  def index
    @categories = Category.all unless user_signed_in?
  end

  private

  def fetch_my_categories
    return [] unless user_signed_in?
    current_user.categories
  end

  def fetch_other_categories_ids
    return [] unless user_signed_in?
    Category.ids - current_user.category_ids
  end
end
