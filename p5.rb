
#replacing white space with |
input = "hello how are you 3239234 number strugg#!@!#le root fur$$$niture"
puts "input string"
puts  input
input.gsub! /\s+/, '|'
puts "string after replace whitespace to |"
puts input 
