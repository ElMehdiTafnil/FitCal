class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.integer :calories
      t.string :description
      t.integer :protein
      t.integer :carbs
      t.string :fats
      t.string :integer

      t.timestamps
    end
  end
end
