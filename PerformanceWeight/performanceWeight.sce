n=10
Weight=grand(n,1, "uin", 10000,60000)
Perf=grand(n,1, "uin", 6,15)
c=cov(Weight,Perf)

co=correl(Weight,Perf)

plot(Weight,Perf)
