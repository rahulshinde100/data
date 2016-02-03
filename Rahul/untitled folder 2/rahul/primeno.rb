class Primedemo
	
	def primefun

		puts "Enter the no"
		no=gets.to_i
		count=0
		for i in 2..no
			
				if no % i == 0
					count+=1
				end
		end


		if count==1
			puts "#{no} is prime no"
		
		else
			puts "#{no} is not prime no"
		end
		
	end
	p=Primedemo.new
	p.primefun

end