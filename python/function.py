def first_fun():
  print('Waah!! Ho gya tujhse')
  
  
first_fun()


def number_sqr( n):
  num  = n*n;
  print(num)
  
number_sqr(8) 

def num_power(num ,x):
  print(num**x)
  
num_power(64,3)


# Arbitrary arguments
# where we dont know how many arguments we are going to pass

nums_tuple = (1,2,3,4,5,6,7,8,9,10)

def product_All(*nums):
  prd = 1;
  for  i in nums:
    prd = prd * i
  return prd
  
print(product_All(*nums_tuple))
