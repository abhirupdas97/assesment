class AssesmentsController < ApplicationController

	def calculate_sum
		input_string = params[:string]
		sum = 0
		input_string.each_char do |s|
		 sum += s.to_i 
		end
		return json: {sum: sum}
	end

end
