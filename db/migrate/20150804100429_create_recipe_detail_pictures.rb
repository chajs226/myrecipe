class CreateRecipeDetailPictures < ActiveRecord::Migration
  def change
    create_table :recipe_detail_pictures do |t|
			t.string	:path
			t.integer	:recipe_detail_id

      t.timestamps
    end
  end
end
