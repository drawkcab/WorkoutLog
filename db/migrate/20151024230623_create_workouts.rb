class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :workout
      t.string :mood
      t.integer :length

      t.timestamps null: false
    end
  end
end
