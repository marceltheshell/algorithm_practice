# /* 
# Your last JavaScript (Node) code is saved below:
# ffunction powerset(str) {
#   let result = [];
  
#   function traverse(build, depth) {
#     if (depth === str.length) {
#       result.push(build);
#       return;
#     }
    
#     traverse(build, depth + 1);
#     traverse(build + str[depth], depth + 1);
#   }
#   traverse('', 0);
  
#   return result;
# }

# console.log(powerset('abc'));


def powerset(input)
  
  result = [] #create state variable 

  traverse = lambda do |build, depth| 
	
	if depth == input.length
		result << build
	end

  	traverse.call(build, depth + 1)
  	traverse.call(build + str[depth], depth + 1)
  end

  traverse.call("", 0) #the first time we call helper function

  return result
end







