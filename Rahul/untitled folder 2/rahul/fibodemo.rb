class FiboDemo

	def fibdemo
		puts "Enter the no"
		no=gets.to_i

		a=0
		b=1
		f=0

		for i in 1..no
			puts "#{f}"
			f=a+b

			a=b
			b=f

		end
		
	end


end

ff=FiboDemo.new
ff.fibdemo