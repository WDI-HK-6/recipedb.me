class CreateRecipeIngredientLists < ActiveRecord::Migration
  def change
    create_table :recipe_ingredient_lists do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :recipe_amount_us
      t.string :recipe_unit_us
      t.integer :recipe_amount_metric

      t.timestamps
    end
  end
end
