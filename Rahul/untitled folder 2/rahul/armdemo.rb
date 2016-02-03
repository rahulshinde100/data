class ArmDemo

	def armdemo
		puts "Enter the no"
		no=gets.to_i

		rem=0
		ans=0
		temp=no.to_i
		while no !=0 do

				rem=no%10
				ans=ans+rem*rem*rem
				no=no/10


			
		end

		if temp==ans
			puts "#{temp} is armstrong no"
		else
			puts "#{temp} is not armstong no"
		end

	end
end

a=ArmDemo.new
a.armdemo

