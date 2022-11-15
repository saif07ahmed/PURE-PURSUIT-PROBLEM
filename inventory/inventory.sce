import random 
p,q=map(int,input().split())
stock=115
unitsDue=0 
startDate=0
totalCost=0
dueDate=None 
while startDate<180:
    if startDate==dueDate:
        stock+=q 
        unitsDue=0
    demand=random.randint(0,99)
    if demand<=stock:
        stock-=demand 
        totalCost+=0.75*stock      #carrying cost 
    else:
        totalCost+=(demand-stock)*18   #loss cost
        stock=0
    if stock+unitsDue<=p:
        unitsDue=q  #reorder 
        totalCost+=q*16      #reorder cost
        dueDate=startDate+3
    startDate+=1
print(totalCost)
