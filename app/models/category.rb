class Category < ActiveRecord::Base
  has_many :user_categories
  has_many :users , through: :user_categories
  has_many :note_categories
  has_many :notes , through: :note_categories
  mount_uploader :avatar, AvatarUploader
  scope :other_categories, ->(category_ids) { where(id: category_ids) }
end
