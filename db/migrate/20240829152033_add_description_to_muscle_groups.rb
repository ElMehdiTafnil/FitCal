class AddDescriptionToMuscleGroups < ActiveRecord::Migration[7.1]
  def change
    add_column :muscle_groups, :description, :string
  end
end
