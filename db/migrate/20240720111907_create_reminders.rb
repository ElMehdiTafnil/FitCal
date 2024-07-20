class CreateReminders < ActiveRecord::Migration[7.1]
  def change
    create_table :reminders do |t|
      t.string :email_subject
      t.string :email_body
      t.datetime :sent_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
