def factorial(n)

	#1instantiate scope variables
	result = 1

	#3a helper method
	multiply_int = lambda do |count|

		#4 base case
		return if count > n

		#5 recursive case
		result *= count
		multiply_int

	end


	#3b invoke helper method
	multiply_int.call(1)

	#2return result
	return result

end