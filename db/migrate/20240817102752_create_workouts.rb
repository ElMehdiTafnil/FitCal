class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :img_url
      t.text :description
      t.references :muscle_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
