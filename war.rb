puts "war problem"
leng=[100, 50, 10 , 5 ]
fali=[300, 200, 40, 20 ]
falinp=[]
def input(falinp)
	puts "enter the army forces deploying by falicornia(in th order [H, E, AT, SG]"
	for i in 0..3
     
     x=gets.chomp.to_i
     falinp[i]=x
    end

      if falinp[0] >300
	  puts "wrong inputs"
      elsif falinp[1] >200
	  puts "wrong inputs"
      elsif falinp[2] > 40
	  puts "wrong inputs"
      elsif falinp[3] >20
	  puts "wrong inputs"
      else
	  puts "calculating......"
     end
			
end
def output(falinp,leng)
 	if ((falinp[0])%2)==0
 		h_fali=falinp[0]/2
 	else
 		h_fali =(falinp[0]+1)/2
 	end
 	if ((falinp[1])%2)==0
 		e_fali=falinp[1]/2
 	else
 		e_fali =(falinp[1]+1)/2
 	end
    if ((falinp[2])%2)==0
 		at_fali=falinp[2]/2
 	else
 		at_fali =(falinp[2]+1)/2
 	end
 	if ((falinp[3])%2)==0
 		sg_fali=falinp[3]/2
 	else
 		sg_fali =(falinp[3]+1)/2
 	end

 	
 	h_leng =leng[0]
 	e_leng =leng[1]
 	at_leng =leng[2]
 	sg_leng =leng[3]
 	a=b=c=d=sum=0
 	
 	if (h_fali <= h_leng && e_fali <= e_leng && at_fali <= at_leng && sg_fali <= sg_leng)
 		puts "Lengaburu deploys #{h_fali}H #{e_fali}E #{at_fali}AT #{sg_fali}SG and wins"
 	else
 		begin
 	  
 		#calculating for sling gun
        if (sg_fali+sum)<=sg_leng
       	 a +=(sg_fali+sum)
       	 sg_leng -= (sg_fali+sum)
       	 sum = 0
       	else
       		a +=sg_leng
       		sum=(sg_fali-sg_leng)*2
       		sg_leng=0
       	end	
       	# calculating Armoured Tanks
       	
       	if (at_fali+sum)<=at_leng
       	 b +=(at_fali+sum)
       	 at_leng -= (at_fali+sum)
       	sum=0
       	else
       		b += at_leng
       		sum=(at_fali-at_leng)*2
       		at_leng=0
       	end	
       	# calculating number of elephants
       	if (e_fali+sum)<=e_leng
       	 c +=(e_fali+sum)
       	 e_leng -= (e_fali+sum)
       	sum=0
       	else
       		c +=e_leng
       		sum=(e_fali-e_leng)*2
       		e_leng=0
       	end	
       	#calculating number of horses
       	if (h_fali+sum)<=h_leng
       	 d +=(h_fali+sum)
       	 h_leng -= (h_fali+sum)
       	sum=0
       	else
       		d +=h_leng
       		sum=(h_fali-h_leng)*2
       		h_leng=0
       	end	
       if sum==0
       	puts "Lengaburu deploys #{d}H #{c}E #{b}AT #{a}SG and wins"
       elsif (sum!=0 && (h_leng+e_leng+sg_leng+at_leng)==0)
       		puts "Lengaburu deploys #{d}H #{c}E #{b}AT #{a}SG and loss"
       		break
       else
       	puts "in progress"
       end
     end while sum!=0
       	 
       	 		 

     


       		
 	end
 end



input(falinp)
output(falinp,leng)
