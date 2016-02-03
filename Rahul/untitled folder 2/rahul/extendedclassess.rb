class A
	def aa
		puts "this is class A"
	end
end
class B <A
	def bb
		puts "this is class B"
	end
end
class C <B
	def cc
		puts "this is class C"
	end
end
class D <C
	def dd
		puts "this is class D"
	end
end
class MyDemo
	def demo
		puts "this is class MyDemo"
		
		d=D.new
		d.dd
		d.cc
		d.bb
		d.aa
	end
end	

m=MyDemo.new
m.demo