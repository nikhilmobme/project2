ar = [2, 3, 7, 9, 10, 13]
even = []
odd = []
puts "given array"
puts ar
ar.each do |x|
	x1= x
	if x1%2==0
		even.push(x1)
	else
		odd.push(x1)
	end
end
puts "array with odd numbers is"
puts odd
puts "array with even number is"
puts even