class Demo

def hello(args)

	puts "Hello "+ args.join(' ')

end
d=Demo.new
d.send :hello,"rahul"
end