class Workout < ActiveRecord::Base
  has_many :excercises, :dependent => :delete_all
  belongs_to :user
end
