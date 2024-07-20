class CreateObjectives < ActiveRecord::Migration[7.1]
  def change
    create_table :objectives do |t|
      t.integer :weight_target
      t.integer :calorie_target
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
