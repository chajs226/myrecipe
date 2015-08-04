class CreateRecipeDetails < ActiveRecord::Migration
  def change
    create_table :recipe_details do |t|
			t.integer	:recipe_id
			t.text	:content

      t.timestamps
    end
  end
end
