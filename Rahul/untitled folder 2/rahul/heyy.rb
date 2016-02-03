a = [ "a", "b", "c" ]
a.freeze
if a.frozen!
	puts a << "z"
else
	puts a
end	