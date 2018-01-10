=begin

def ask(message)
  print message
  gets.chomp
end

puts "Please give me a following data: "

age = ask("Age in years: ")
height = ask("Height in centimeters ")
weight = ask("Weight in kilograms: ")
gender = ask("Gender (just put m or f)")
level_a = ask("Put your activity level on a scale from 1 to 5:
  \n1 - little or no exercise \2 - exercise/sports 1 - 3 times per week
\n3 - exercise/sports 4 - 5 times per week \n4 - exercise/sports 6 - 7 times per week
\n5 - very hard exercise/sports or physical job")

=end

def ask(message)
  print message
  return gets.chomp
end

def ask_activity_level
  puts "Put here your exercise level from 1 to 5? "

  puts " 1. little or no exercise "
  puts " 2. exercise/sports 1 - 3 times per week "
  puts " 3. exercise/sports 4 - 5 times per week "
  puts " 4. exercise/sports 6 - 7 times per week "
  puts " 5. very hard exercise/sports or physical job "

  return gets.chomp
end

def calculate_bmi(weight, height)
  weight / (height / 100.0)**2
end

def calculate_ideal_weight(bmi, height)
  (0.5 * bmi + 11.5) * (height / 100.0)**2
end

def calculate_bmr(weight, height, age, gender)
  bmr = 10.0 * weight + 6.25 * height - 5.0 * age
  bmr = bmr + 5 if gender == 'm'
  bmr = bmr - 161 if gender == 'f'
  return bmr
end

def calculate_cpr(bmr, activity_level)
  cpr = bmr
  cpr = cpr + cpr*0.2 if activity_level == 1
  cpr = cpr + cpr*0.375 if activity_level == 2
  cpr = cpr + cpr*0.55 if activity_level == 3
  cpr = cpr + cpr*0.725 if activity_level == 4
  cpr = cpr + cpr*0.9 if activity_level == 1

  return cpr
end

def diet_plan(weight, ideal_weight, cpr)
  if weight > ideal_weight
    diet_cpr = cpr - 500
    diet_weeks = (weight - ideal_weight) / 0.5
  else weight < ideal_weight
    diet_cpr = cpr + 500
    diet_weeks = (ideal_weight - weight) / 0.5
  end

return diet_cpr, diet_weeks.to_i
end

puts "Put here your name please: "
name = gets.chomp.capitalize
puts "Hello, #{name}! Go and create a diet plan for you!"

age = ask("Put your age in years: ").to_i
height = ask("Put your height in sm: ").to_i
weight = ask("Put your weight in kg: ").to_i
gender = ask("Put your gender as m of f: ")
activity_level = ask_activity_level

bmi = calculate_bmi weight, height
ideal_weight = calculate_ideal_weight bmi, height
bmr = calculate_bmr weight, height, age, gender
cpr = calculate_cpr bmr, activity_level

diet_cpr, diet_weeks = diet_plan(weight, ideal_weight, cpr)

goal_bmr = calculate_bmr weight, height, age, gender
goal_cpr = calculate_cpr goal_bmr, activity_level

puts "Ideal weight:: #{ideal_weight} kg."
puts "To reach this weight you should be consuming #{diet_cpr} calories per day for #{diet_weeks} weeks."
puts "Calories to maintain ideal weight: #{goal_cpr} calories per day."
