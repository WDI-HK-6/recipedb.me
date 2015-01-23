class CreateIngredientNames < ActiveRecord::Migration
  def change
    create_table :ingredient_names do |t|
      t.string :recipe_ingredient_sub_name
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
