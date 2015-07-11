module DisciplinesHelper
  def belongs_to_user(discipline)
    user_signed_in? && discipline.user == current_user
  end
end
