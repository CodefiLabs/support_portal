class Category < ApplicationRecord
  has_many :tickets
  belongs_to :user 
  def by_user(user_id)
    UserCategories.where(users_id: user_id).collect{|x| x.categories_id}
  end
end