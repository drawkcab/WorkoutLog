class CreateExcercises < ActiveRecord::Migration
  def change
    create_table :excercises do |t|
      t.string :name
      t.integer :set
      t.integer :reps
      t.references :workout, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
