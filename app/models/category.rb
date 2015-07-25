class Category < ActiveRecord::Base
  has_many :user_categories
  has_many :users , through: :user_categories

  scope :other_categories, ->(category_ids) { where(id: category_ids) }
  has_many :notes , through: :note_categories
end
