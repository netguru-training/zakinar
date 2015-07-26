class UnassignCategoryFromUser
  attr_accessor :user, :category

  def initialize(user, category)
    self.user = user
    self.category = category
  end

  def call!
    user.categories.delete category
  end


end