def reverse_vowels(string)
  
  result = ""
  str = string.split("")
  vowels = ["a", "e", "i", "o", "u"] 
  ending = str.length - 1

  str.each_with_index do |letter, i|
    if i > ending
      return "all done"
    end

    #find the first vowel from end of str
    while ending >= 0
      if vowels.include?(str[ending])
        break
      end
      ending -=1
    end

    #find vowels at beginning of the string
    if !(vowels.include?(str[i]))
      puts "no vowel"
    end
    
    end


  end

end