class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.date :date_due
      t.references :user

      t.timestamps
    end
  end
end
