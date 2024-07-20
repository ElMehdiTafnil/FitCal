class CreateMealplans < ActiveRecord::Migration[7.1]
  def change
    create_table :mealplans do |t|
      t.string :name
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
