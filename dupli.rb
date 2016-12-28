# duplicate element delete
def delete_duplicate(array)
sorted = array.sort
puts "sorted array"
puts sorted

arr = []

sorted.each do |x|

	if arr.last != x
		arr.push(x)
	end 
end

	
puts "array after deleting duplicate elements"
puts arr
end




array=[ 2 ,2 ,7 ,3 ,20 ,7 , 47 , 34 , 47 ]
puts "array elements"
array.each { |x| puts x }
delete_duplicate(array)
