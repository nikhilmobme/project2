input =  'hell omy dear friends my \transaction_id=\123\ '
  val = input.scan(/transaction_id=[0-9]*/)

puts 'transactoin id is' 
puts  val
