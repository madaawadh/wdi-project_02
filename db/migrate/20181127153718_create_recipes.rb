class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :image
      t.string :title
      t.string :steps
      t.integer :user_id

      t.timestamps
    end
  end
end
