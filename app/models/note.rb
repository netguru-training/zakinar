class Note < ActiveRecord::Base
  has_many :note_categories
  has_many :categories, through: :note_categories
  belongs_to :user
end
