
	def  myfun
		puts "this is fun"
		yield 13
	end

	myfun { |i| puts "this is block #{i}"}
