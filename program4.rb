input = %q<hell omy dear friends my \transaction_id=123 >
var =   input.scan(/transaction_id=[\d]*/)
puts var
