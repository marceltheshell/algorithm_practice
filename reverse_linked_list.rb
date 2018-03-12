#reverse_linked_list

class Node 
	def initialize(value, next)
		@value = value
		@next = next
	end
end

class LinkedList
	def initialize(value)
		@head = value
	end

	def reverse_ll()
		prev = @head
		current = @head
		next = current.next

		while current != nil
			prev = current
			current = next
			next = next.next
		end

		@head = prev
	end

end



