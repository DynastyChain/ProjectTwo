class Recipe < ActiveRecord::Base
  belongs_to :user
  # Favorited by users
  has_many :favorite_recipes # just the 'relationships'
  has_many :favorited_by, through: :favorite_recipes, source: :user # the actual users favoriting a recipe

  def self.search(search)
  where("dish ILIKE ?", "%#{search}%")

end


end
