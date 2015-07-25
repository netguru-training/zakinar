class Note < ActiveRecord::Base
  has_many :categories, through: :note_categories
  belongs_to :user
end
