#create a stack class
#use an array structure to handle our stack class methods

class MinStack
  
	def initialize
		@stack = []
		@min_stack = []
	end

	def push(val)
		@stack.push(val)
		if @min_stack.length == 0
			@min_stack<<val
		elsif val<=@min_stack[-1]
			@min_stack<<val
		end
	end

	def pop
		popped_val = @stack.pop
		if popped_val == @min_stack[-1]
			@min_stack.pop
		end
		popped_val
	end

	def min
		min_value = min_stack[-1]
	end

	def peek
		#returns the val at end of arr without removing it
	end
end

minstack = MinStack.new
p minstack.push(5)
