dam_level=110                  
usage=10                        
pop_incr=0.1                 
dam_vol=50                 
z=0                       
for i=1:100               
	rain=grand(12,1,"uin",10,50)                  
	river_flow=grand(12,1,"uin",40,50)            
	seepage=grand(12,1,"uin",2,10)               
	evap=grand(12,1,"uin",2,50)               
  for j=1:12                             
    	  inflow=rain(j)+river_flow(j)
        outflow=seepage(j)+evap(j)+usage
        dam_vol=dam_vol+(inflow-outflow)/100
        usage=usage+pop_incr
        if dam_vol>dam_level then
        	z=1
            disp("dam flooded after")
            disp(i)
            disp("years")
            break
        end
        if dam_vol<=0 then
        	z=1
            disp("dam emptied after")
            disp(i)
            disp("years")
            break
        end
    end
	if z==1 then
    	break
    end
end
