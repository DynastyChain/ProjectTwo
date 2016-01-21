class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :dish
      t.text :ingredients
      t.text :steps


      t.timestamps null: false
    end
  end
end
