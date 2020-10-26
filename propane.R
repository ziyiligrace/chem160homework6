R= 0.082058
T= 400 #K
P= 200 #bar
c1= 33.258
c2= 7.5884
c3= 1.0306
c4= 0.058757
c5= 0.0033566
c6= 0.00060696

roots = polyroot(c(c1,c2,c3,c4,c5,c6))
cat(roots)