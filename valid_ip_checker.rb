#is_valid_ip_address?

def valid_ip_checker(arr)
	
	### helper functions ###
	def check_ivp4(checked_arr) 
		checked_arr.split(".").each do |i|
			i = i.to_i
			if i>255 || i<0
				return false
			end
		end
		
		if checked_arr.split(".").length == 4
			return true
		end
		return false
	end


	def check_ipv6(checked_arr) 
		checked_arr.split(":").each do |chunk|
		  chunk.split("").each do |letter|
		    if !/[0-9a-fA-F]/.match(letter)
		      return false
		    end
		  end
		end

		if checked_arr.split(":").length == 8
			return true
		end
		return false
	end

	#logic
	results = [] 
	arr.shift
	arr.each_with_index do |ip, i|

		if check_ivp4(ip)
			results << "IPv4"
		elsif check_ipv6(ip)
			results << "IPv6"
		else
			results << "Neither"
		end
	end
	results
end

valid_ip_checker([6, "19.117.63.126", "255.255.253.0", "19.117.63.253", "684D:1111:222:3333:4444:5555:6:77", "0:0:0:0:0:0:0:0", "this is gibberish"])