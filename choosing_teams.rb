def factorial(n)
   if n<= 1
    1
  else
    n * factorial( n - 1 )
  end
end

def choose_team(n, k)
  if n >= 1
    factorial(n) / (factorial(k) * factorial(n-k))
  else
    return 0
  end
end

#Driver Code 
p choose_team(0, 1) == 0
p choose_team(18, 1) == 18
p choose_team(6, 2) == 15
p choose_team(6, 3) == 20
p choose_team(24, 4) == 10626