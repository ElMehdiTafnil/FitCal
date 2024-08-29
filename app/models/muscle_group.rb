class MuscleGroup < ApplicationRecord
  has_many :workouts, dependent: :destroy

  validates :description, presence: true
end
