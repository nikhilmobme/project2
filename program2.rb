
def random
o = [('0'...'9')].map { |i| i.to_a }.flatten
string = (0...50).map { o[rand(o.length)] }.join
puts string
end 
random 