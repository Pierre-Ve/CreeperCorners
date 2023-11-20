class CreateBuilds < ActiveRecord::Migration[7.1]
  def change
    create_table :builds do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :surface
      t.string :description
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
