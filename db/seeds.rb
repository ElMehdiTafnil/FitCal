# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create!_by!(name: genre_name)
#   end
chest = MuscleGroup.create! name: 'Chest', img_url: 'muscle_groups/chest/4_chest.png'
 Workout.create! name: 'Dip', img_url: 'muscle_groups/chest/40_chest.png', muscle_group: chest
 Workout.create! name: 'dbp', img_url: 'muscle_groups/chest/41_chest.png', muscle_group: chest
 Workout.create! name: 'ibp', img_url: 'muscle_groups/chest/42_chest.png', muscle_group: chest


abs = MuscleGroup.create! name: 'Abs', img_url: 'muscle_groups/ABS/1_abs.png'
 Workout.create! name: 'Lying_Leg_Raise', img_url: 'muscle_groups/ABS/10_lying-leg-raise.jpg', muscle_group: abs
 Workout.create! name: 'Sit_Up', img_url: 'muscle_groups/ABS/11_sit-up.jpg', muscle_group: abs
 Workout.create! name: 'Weighted_Crunch', img_url: 'muscle_groups/ABS/12_weighted-crunch.jpg', muscle_group: abs


back = MuscleGroup.create! name: 'Back', img_url: 'muscle_groups/back/2_upper-back.png'
 Workout.create! name: 'BOR', img_url: 'muscle_groups/back/20_bent-over-row.jpg', muscle_group: back
 Workout.create! name: 'LPD', img_url: 'muscle_groups/back/21_lat-pulldown.jpg', muscle_group: back
 Workout.create! name: 'SR', img_url: 'muscle_groups/back/22_seated-row.jpg', muscle_group: back


biceps = MuscleGroup.create! name: 'Biceps', img_url: 'muscle_groups/biceps/3_biceps.png'
 Workout.create! name: 'BC', img_url: 'muscle_groups/biceps/30_bicep-curl.jpg', muscle_group: biceps
 Workout.create! name: 'DC', img_url: 'muscle_groups/biceps/31_dumbbell-curl.jpg', muscle_group: biceps
 Workout.create! name: 'PC', img_url: 'muscle_groups/biceps/32_preacher-curl.jpg',  muscle_group: biceps


forearms = MuscleGroup.create! name: 'Forearms', img_url: 'muscle_groups/forearms/5_forearms.png'
 Workout.create! name: 'PPC', img_url: 'muscle_groups/forearms/50_plate-pinch-carry.jpg', muscle_group: forearms
 Workout.create! name: 'RGB', img_url: 'muscle_groups/forearms/51_reverse_grip_barbell.jpg', muscle_group: forearms
 Workout.create! name: 'SU', img_url: 'muscle_groups/forearms/11_sit-up.jpg', muscle_group: forearms


quads = MuscleGroup.create! name: 'Quads', img_url: 'muscle_groups/legs/6_quads.png'
 Workout.create! name: 'BBS', img_url: 'muscle_groups/legs/60_barbell-back-squat.jpg', muscle_group: quads
 Workout.create! name: 'SLC', img_url: 'muscle_groups/legs/61_seated-leg-curl.jpg', muscle_group: quads
 Workout.create! name: 'SMCR', img_url: 'muscle_groups/legs/62_standing-machine-calf-raise.jpg', muscle_group: quads


shoulders = MuscleGroup.create! name: 'Shoulders', img_url: 'muscle_groups/shoulders/7_shoulders.png'
 Workout.create! name: 'BOCRDF', img_url: 'muscle_groups/shoulders/70_bent-over-cable-rear-delt-fly.jpg', muscle_group: shoulders
 Workout.create! name: 'DLR', img_url: 'muscle_groups/shoulders/71_dumbbell-lateral-raise.jpg', muscle_group: shoulders
 Workout.create! name: 'MOP', img_url: 'muscle_groups/shoulders/72_military-overhead-press.jpg', muscle_group: shoulders


triceps = MuscleGroup.create! name: 'Triceps', img_url: 'muscle_groups/triceps/8_triceps.png'
 Workout.create! name: 'EBSC', img_url: 'muscle_groups/triceps/80-ez-bar-skullcrusher.jpg', muscle_group: triceps
 Workout.create! name: 'RTE', img_url: 'muscle_groups/triceps/81_rope-tricep-extension-1.jpg', muscle_group: triceps
 Workout.create! name: 'SODTE', img_url: 'muscle_groups/triceps/82_seated-overhead-dumbbell-tricep-extension.jpg', muscle_group: triceps
