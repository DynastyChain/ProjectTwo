class AddCooktimeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :cooktime, :integer
  end
end
