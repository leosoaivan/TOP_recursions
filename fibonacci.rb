def fibs(int)
  fib_init = [1, 1]
  while fib_init.length < int
    fib_init << fib_init[-1] + fib_init[-2]
  end
  return fib_init[0...int]
end

fibs(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

def fibs_rec(n, arr = [1, 1])
	return arr[0] if n == 0 || n ==1
	return arr if n == arr.length
	fibs_rec(n, arr << arr[-1] + arr[-2])
end

fibs_rec(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
