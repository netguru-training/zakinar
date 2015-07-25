class Category < ActiveRecord::Base
  has_many :notes
  has_many :user_categories
  has_many :users , through: :user_categories
  
  scope :other_categories, (category_ids)-> { where params[:id] current_user.category_ids }
end
