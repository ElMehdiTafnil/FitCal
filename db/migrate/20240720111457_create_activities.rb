class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string :activity_type

      t.timestamps
    end
  end
end
