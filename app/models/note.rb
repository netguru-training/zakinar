class Note < ActiveRecord::Base
  has_many :categories
  belongs_to :user
end
