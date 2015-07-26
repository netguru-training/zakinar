class AssignCategoryToUser
  attr_accessor :user, :category

  def initialize(user, category)
    self.user = user
    self.category = category
  end

  def call!
    user.categories << category
  end


end