arr=Array.new
i=0
while i<=5000
   arr[i] = i
   i += 1
end

def arraymethods(arr)
	
 
     def arrayprint(arr, lowindex, highindx)
	     for num in lowindex...highindx
	         
	         print " #{arr[num]}"
	
          end
     end

	length=arr.length
	lowindex=0
	highindx=1000
	reminder=length/1000
	loopval=0
	while loopval<reminder
       puts "\n\n\n"
         #call to arrayprint methods
	      arrayprint(arr, lowindex, highindx)
	      lowindex=highindx
	      highindx=highindx+1000
	      loopval +=1
     end
	
end
arraymethods(arr)

