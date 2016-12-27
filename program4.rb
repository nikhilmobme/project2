input =  'hell omy dear friends my \transaction_id=\123\ '
  val = input.scan(/[0-9]*/)

puts 'transactoin id is' 
puts val
