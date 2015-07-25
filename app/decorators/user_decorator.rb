class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    user_name.presence || email
  end

  private

  def user_name
    "#{first_name} #{last_name}"
  end
end
