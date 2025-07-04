#  BMI CALCULATOR

weight = float(input("Enter your weight in kg: "));

print( 'Your weight is',weight , " kg")

height = float(input("Enter your height in cm: "));
height_in_meters = height / 100
print('Your height is',height_in_meters," meters")

bmi = weight / (height_in_meters**2);

print('Your BMI is',round(bmi,2))

print('Your BMI is')

if bmi < 18.5 :
  print('Underweight')
elif bmi >= 18.5 and bmi <24.9:
  print('Normal weight')
elif bmi >=25 and bmi <29.9:
  print('Overweight')
else:
  print('Obese')