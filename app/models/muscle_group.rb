class MuscleGroup < ApplicationRecord
  has_many :workouts, dependent: :destroy
end
