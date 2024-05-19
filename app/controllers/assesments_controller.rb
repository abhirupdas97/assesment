
class AssesmentsController < ApplicationController

	def calculate_sum(input)
	  sum = 0
	  flag = 0
	  len = input.length - 1
	  input.each_char.with_index do |s, i|
	    if s == "-" && i >= 0 && i < len && i+1 <= len && input[i+1].to_i != 0  
	      raise NegativeNumberError, "Negative number not allowed -#{input[i+1].to_i}"
	      flag = 1
	    end
	    sum += s.to_i 
	  end
	  if flag == 0
	    p sum
	  end
	end

end
