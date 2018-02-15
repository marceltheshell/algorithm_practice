def combinations(n, k)
#instantiate var
combinations = []
	

	#populates the combinations array
	calculate_combinations = lambda do |start, combos|
		#two base cases
			#1. if combos.length == k, push results to return
			#2 if start > n , return


		#recursive case
		calculate_combinations.call(start + 1, copy)
		
	end





return combinations

end