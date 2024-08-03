class UsersController < ApplicationController
  def results
    # Get the user's profile details from the database
    @user = current_user
    # Calculate the user's BMR
    @bmr = calculate_bmr(@user)
    # Calculate the user's TDEE
    @tdee = calculate_tdee(@bmr, @user.activity_level)
    # Calculate the user's macronutrient requirements
    @macronutrients = calculate_macronutrients(@tdee)
  end

  def update
    # Save user profile details to the database
    if current_user.update(user_params)
      # Redirect to the results page with query parameters
      redirect_to results_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:age, :height, :weight, :activity_level)
  end

  def calculate_bmr(user)
    # Using Mifflin-St Jeor Equation
    (10 * user.weight) + (6.25 * user.height) - (5 * user.age) + 5 # for men
  end

  def calculate_tdee(bmr, activity_level)
    multiplier = case activity_level
                 when 'sedentary' then 1.2
                 when 'light' then 1.375
                 when 'moderate' then 1.55
                 when 'active' then 1.725
                 when 'very_active' then 1.9
                 end
    bmr * multiplier
  end

  def calculate_macronutrients(tdee)
    {
      protein: (tdee * 0.3 / 4).round, # 30% of TDEE from protein, 4 kcal per gram
      fat: (tdee * 0.25 / 9).round, # 25% of TDEE from fat, 9 kcal per gram
      carbs: (tdee * 0.45 / 4).round # 45% of TDEE from carbs, 4 kcal per gram
    }
  end
end
