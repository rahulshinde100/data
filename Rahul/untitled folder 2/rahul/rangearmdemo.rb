class ArmDemo

	def armdemo
		puts "Enter the start no"
		start=gets.to_i
		puts "Enter the end no"
		end1=gets.to_i

		rem=0
		ans=0
		for no in start..end1

		temp=no.to_i
		while no !=0 do

				rem=no%10
				ans=ans+rem*rem*rem
				no=no/10	
				#puts "#{ans}"
		end

		if temp==ans
			puts "#{temp} is armstrong no"
			ans=0
		else
			ans=0
		end
	end

	end
end

a=ArmDemo.new
a.armdemo

