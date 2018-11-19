module UserCategoriesService
  def self.assign_category(category_id, category_title, user_id)
    assignment = UserCategories.new(categories_id: category_id, category_title: category_title, users_id: user_id)
    assignment.save
  end

  def by_user
    user_categories = UserCategories.where(users_id: current_user.id)
  end
end