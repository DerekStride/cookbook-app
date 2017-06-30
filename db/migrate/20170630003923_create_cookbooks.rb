class CreateCookbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :cookbooks do |t|
      t.references :user, index: true, null: false
      t.string :title, null: false
      t.text :description


      t.timestamps
    end
  end
end
