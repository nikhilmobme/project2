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

    if (falinp[0] >300 && falinp[1] >200 && falinp[2] > 40 &&falinp[3] >20)
	   puts "wrong inputs"
    else
	  puts "calculating......"
     end
			
end

def output(falinp,leng)
	for i in 0..3

 	 if ((falinp[i])%2)==0
 		falinp[i]=falinp[i]/2
 	 else
 		falinp[i] =(falinp[i]+1)/2
 	 end
 	end
 	h_fali=falinp[0]
 	e_fali=falinp[1]
 	at_fali=falinp[2]
 	sg_fali=falinp[3]

 	
 	h_leng =leng[0]
 	e_leng =leng[1]
 	at_leng =leng[2]
 	sg_leng =leng[3]
 	sg=at=e=h=bal=0
 	
 	if (h_fali <= h_leng && e_fali <= e_leng && at_fali <= at_leng && sg_fali <= sg_leng)
 		puts "Lengaburu deploys #{h_fali}H #{e_fali}E #{at_fali}AT #{sg_fali}SG and wins"
 	else
 		begin
 	  
 		#calculating for sling gun
        if (sg_fali+bal)<=sg_leng
       	 sg +=(sg_fali+bal)
       	 sg_leng -= (sg_fali+bal)
       	 bal = 0
       	else
       		sg +=sg_leng
       		bal=(sg_fali-sg_leng)*2
       		sg_leng=0
       	end	
       	# calculating Armoured Tanks
       	
       	if (at_fali+bal)<=at_leng
       	 at +=(at_fali+bal)
       	 at_leng -= (at_fali+bal)
       	bal=0
       	else
       		at += at_leng
       		bal=(at_fali-at_leng)*2
       		at_leng=0
       	end	
       	# calculating number of elephants
       	if (e_fali+bal)<=e_leng
       	 e +=(e_fali+bal)
       	 e_leng -= (e_fali+bal)
       	bal=0
       	else
       		e +=e_leng
       		bal=(e_fali-e_leng)*2
       		e_leng=0
       	end	
       	#calculating number of horses
       	if (h_fali+bal)<=h_leng
       	 h +=(h_fali+bal)
       	 h_leng -= (h_fali+bal)
       	bal=0
       	else
       		h +=h_leng
       		bal=(h_fali-h_leng)*2
       		h_leng=0
       	end	
       if bal==0
       	puts "Lengaburu deploys #{h}H #{e}E #{at}AT #{sg}SG and wins"
       elsif (bal!=0 && (h_leng+e_leng+sg_leng+at_leng)==0)
       		puts "Lengaburu deploys #{h}H #{e}E #{at}AT #{sg}SG and loss"
       		break
       else
       	puts "in progress"
       end
     end while bal!=0
       	 
       	 		 

     


       		
 	end
 end



input(falinp)
output(falinp,leng)
