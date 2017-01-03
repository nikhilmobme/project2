    
    
require "csv"
hash=Hash.new
result=Hash.new

 def readfile(hash, result)  
    CSV.foreach("input.csv") do |row|
    	hash[row[0]]=row[1]
    end	
        hash.each do |k, v|
      	    if v.to_i>=100
             k = k[-10, 10]
             result[k]=v
            end
        end
 end
 

def writefile(result)
 	headers = ["phone number", "balance"]
 	CSV.open("output.csv", "wb") do |csv|
 	csv<<headers 
 		result.to_a.each  do |elem| 
 			csv << elem
 		end 
 	end
 end


readfile(hash, result)
writefile(result) 

   
