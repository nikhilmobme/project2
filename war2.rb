class War
	
 
 	def input(falinp)
		puts "enter the army forces deploying by falicornia(in th order [H, E, AT, SG]"
   		for i in 0..3
     	x=gets.chomp.to_i
     	falinp[i]=x

    	end

   		 if (falinp[0] >300 && falinp[1] >200 && falinp[2] > 40 && falinp[3] >20)
	   	 puts "wrong inputs"
    	 else
	     puts "calculating......"
        end
    end
   
  def powerrule(falinp)
      for i in 0..3

 	  if ((falinp[i])%2)==0
 	   falinp[i]=(falinp[i]/2).to_i
 	   else
 		falinp[i] =((falinp[i]+1)/2).to_i
 	   end

 	   end
  end
  def rule2(falinp,leng,x)
  	
 	if ((falinp[0] <= leng[0]) && (falinp[1] <= leng[1]) && (falinp[2] <= leng[2]) && (falinp[3] <= leng[3]))
 	puts "Lengaburu deploys #{falinp[0]}H #{falinp[1]}E #{falinp[2]}AT #{falinp[3]}SG and wins"
 	else
     
    i = 3
    begin
    	
      	if falinp[i] <= leng[i]
      		
      		
      		x[i] =falinp[i]
      		leng[i] -= falinp[i]
      		falinp[i]=0
        else
      		x[i]=leng[i]
      		
      		falinp[i] -= leng[i]
      		leng[i]=0
      	end
      	
      	
        i -=1

    end while (i!= -1)
    end
 end 
   
   def finalrule(falinp,leng,x)
    i =3
    
   	begin
   	
   	if  falinp[i]!=0
   		j=i

   		begin
   			
   			if leng[j]!=0
   				if falinp[i] <= leng[j]
   				    leng[j] -= falinp[i]
   					x[j] += falinp[i]
   					falinp[i]=0
   					 if (falinp[0]==0 && falinp[1]==0 && falinp[2]==0 && falinp[3]==0)
   				    puts "Lengaburu deploys #{x[0]}H #{x[1]}E #{x[2]}AT #{x[3]}SG and wins"
   				    break
   				    end

   				else leng[j]<falinp[i]
   					x[j] += leng[j]
   					falinp[i] -= leng[j]
   					leng[j]=0
                    falinp[i] = falinp[i]*2
                    

   				end

   			   end

   			  j -= 1

   				   
   		end while(j!=-1)

   	    else 
   	    i -=1
   	    if(leng[0]==0 && leng[1]==0 && leng[2]==0 && leng[3]==0)
	   	            puts "Lengaburu deploys #{x[0]}H #{x[1]}E #{x[2]}AT #{x[3]}SG and loss"
                    break
                      end
   				    
   				    
   		end
   		
	end while(i!= -1)


     
    end

end
leng=[100 , 50, 10 , 5 ]
fali=[300, 200, 40, 20 ]
falinp=[]
x=[]
warob=War.new
warob.input(falinp)
warob.powerrule(falinp)
warob.rule2(falinp,leng,x)
warob.finalrule(falinp,leng,x)
