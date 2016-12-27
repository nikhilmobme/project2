str="success in the town of error in the SUCCESS sucCess displaying wrong Form of SuccESS deciding SuccEss"
puts "given string is"
puts str

 count = str.downcase.scan(/success/).length

puts "number of times 'success' appering in the string is =#{count}" 
