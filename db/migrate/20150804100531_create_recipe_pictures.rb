class CreateRecipePictures < ActiveRecord::Migration
  def change
    create_table :recipe_pictures do |t|
			t.string	:path
			t.integer	:recipe_id

      t.timestamps
    end
  end
end
