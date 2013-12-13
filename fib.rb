# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1

@fib_hash = {}
@fib_hash = {0 => 0, 1 => 1 }

def fibo_finder(n)
	if @fib_hash.has_key?(n)
		return @fib_hash[n]
	else
		@fib_hash[n] = fibo_finder(n-1) + fibo_finder(n-2)
	end
end

puts fibo_finder(1001)