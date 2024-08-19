class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def show
    @muscle_group = MuscleGroup.find(params[:id])
    @workouts = @muscle_group.workouts.limit(3)
  end
end
