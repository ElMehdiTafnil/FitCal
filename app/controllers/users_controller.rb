class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    # Print out the parameters to the Rails console
    puts params.inspect

    if @user.update(user_params)
      calculate_and_redirect(@user)
    else
      render :edit
    end
  end

  def results
    @user = current_user
    @mealplans = current_user.mealplans
    @bmr = calculate_bmr(@user)
    @tdee = calculate_tdee(@bmr, @user.activity_level)
    @macronutrients = calculate_macronutrients(@tdee)
    @macronutrients_cut = calculate_macronutrients(@tdee * 0.8)
    @macronutrients_bulk = calculate_macronutrients(@tdee * 1.2)
    @ideal_weight = calculate_ideal_weight(@user.height, @user.gender)
  end

  private

  def user_params
    params.require(:user).permit(:age, :height, :weight, :activity_level, :gender)
  end

  def calculate_and_redirect(user)
    @bmr = calculate_bmr(user)
    @tdee = calculate_tdee(@bmr, user.activity_level)
    @macronutrients = calculate_macronutrients(@tdee)
    @macronutrients_cut = calculate_macronutrients(@tdee * 0.8)
    @macronutrients_bulk = calculate_macronutrients(@tdee * 1.2)
    @ideal_weight = calculate_ideal_weight(user.height, user.gender)

    redirect_to results_user_path(user)
  end

  def calculate_bmr(user)
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

  def calculate_ideal_weight(height, gender)
    if gender == "male"
      50 + (0.91 * (height - 152.4))
    elsif gender == "female"
      45.5 + (0.91 * (height - 152.4))
    else
      0
    end
  end
end
