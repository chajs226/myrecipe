class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
			t.string	:title
			t.string	:kind
			t.string	:time
			t.string	:level
			t.integer	:vote
			t.integer	:user_id

      t.timestamps
    end
  end
end
