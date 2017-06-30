class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :user, index: true, null: false
      t.references :cookbook, index: true, null: false
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
