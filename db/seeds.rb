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
 Workout.create! name: 'Dip', img_url: 'muscle_groups/chest/40_chest-dip.jpg', muscle_group: chest
 Workout.create! name: 'Dumbbell Bench Press', img_url: 'muscle_groups/chest/41_dumbbell-bench-press_0.jpg', muscle_group: chest
 Workout.create! name: 'Incline Bench Press', img_url: 'muscle_groups/chest/42_incline-bench-press.jpg', muscle_group: chest


abs = MuscleGroup.create! name: 'Abs', img_url: 'muscle_groups/ABS/1_abs.png'
 Workout.create! name: 'Lying Leg Raise', img_url: 'muscle_groups/ABS/10_lying-leg-raise-1.jpg', muscle_group: abs
 Workout.create! name: 'Sit Up', img_url: 'muscle_groups/ABS/11_sit-up.jpg', muscle_group: abs
 Workout.create! name: 'Weighted Crunch', img_url: 'muscle_groups/ABS/12_weighted-crunch.jpg', muscle_group: abs


back = MuscleGroup.create! name: 'Back', img_url: 'muscle_groups/back/2_upper-back.png'
 Workout.create! name: 'Bent Over Rows', img_url: 'muscle_groups/back/20_bent-over-row.jpg', muscle_group: back
 Workout.create! name: 'Lat Pull Down', img_url: 'muscle_groups/back/21_lat-pulldown.jpg', muscle_group: back
 Workout.create! name: 'Seated Row', img_url: 'muscle_groups/back/22_seated-row.jpg', muscle_group: back


biceps = MuscleGroup.create! name: 'Biceps', img_url: 'muscle_groups/biceps/3_biceps.png'
 Workout.create! name: 'Barbell Curls', img_url: 'muscle_groups/biceps/30_barbell-curl.jpg', muscle_group: biceps
 Workout.create! name: 'Dumbell Curls', img_url: 'muscle_groups/biceps/31_dumbbell-curl.jpg', muscle_group: biceps
 Workout.create! name: 'Preacher Dumbell Hammer Curls', img_url: 'muscle_groups/biceps/32_preacher-dumbbell-hammer-curl.jpg',  muscle_group: biceps


forearms = MuscleGroup.create! name: 'Forearms', img_url: 'muscle_groups/forearms/5_forearms.png'
 Workout.create! name: 'Plate Pinch Carry', img_url: 'muscle_groups/forearms/50_plate-pinch-carry.jpg', muscle_group: forearms
 Workout.create! name: 'Reverse Grip Barbell Curl ez bar', img_url: 'muscle_groups/forearms/51_reverse_grip_barbell-curl-ez-bar.jpg', muscle_group: forearms
 Workout.create! name: 'Seated Barbell Wrist Curl', img_url: 'muscle_groups/forearms/11_seated-barbell-wrist.jpg', muscle_group: forearms


quads = MuscleGroup.create! name: 'Quads', img_url: 'muscle_groups/legs/6_quads.png'
 Workout.create! name: 'Barbell Back Squat', img_url: 'muscle_groups/legs/60_barbell-back-squat.jpg', muscle_group: quads
 Workout.create! name: 'Seated Leg Curl', img_url: 'muscle_groups/legs/61_seated-leg-curl-1.jpg', muscle_group: quads
 Workout.create! name: 'Standing Machine Calf Raise', img_url: 'muscle_groups/legs/62_standing-machine-calf-raise.jpg', muscle_group: quads


shoulders = MuscleGroup.create! name: 'Shoulders', img_url: 'muscle_groups/shoulders/7_shoulders.png'
 Workout.create! name: 'Bent Over Cable Rear Delt Fly', img_url: 'muscle_groups/shoulders/70_bent-over-cable-rear-delt-fly.jpg', muscle_group: shoulders
 Workout.create! name: 'Dumbbell Lateral Raise', img_url: 'muscle_groups/shoulders/71_dumbbell-lateral-raise.jpg', muscle_group: shoulders
 Workout.create! name: 'Military Overhead Press', img_url: 'muscle_groups/shoulders/72_military-overhead-press.jpg', muscle_group: shoulders


triceps = MuscleGroup.create! name: 'Triceps', img_url: 'muscle_groups/triceps/8_triceps.png'
 Workout.create! name: 'Ez Bar SkullCrusher', img_url: 'muscle_groups/triceps/80_ez-bar-skullcrusher.jpg', muscle_group: triceps
 Workout.create! name: 'Rope Tricep Extension', img_url: 'muscle_groups/triceps/81_rope-tricep-extension-1.jpg', muscle_group: triceps
 Workout.create! name: 'Seated Overhead dumbbell Tricep Extension', img_url: 'muscle_groups/triceps/82_seated-overhead-dumbbell-tricep-extension.jpg', muscle_group: triceps
