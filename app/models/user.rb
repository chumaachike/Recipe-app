class User < ApplicationRecord
  has_many :foods
  has_many :recipes

  def recent_foods
    foods.order(created_at: :desc).first(3)
  end
  def recent_recipes
    recipes.order(created_at: :desc).first(3)
  end
end