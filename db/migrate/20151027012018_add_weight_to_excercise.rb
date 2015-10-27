class AddWeightToExcercise < ActiveRecord::Migration
  def change
    add_column :excercises, :weight, :integer
  end
end
