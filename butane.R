Vbar=3.0 #L/mole
T=370 #K
R=0.083145 #(bar L)/(K mole)
P=R*T/Vbar #ideal gas law
cat(P)
a=16.44
b=0.07245
P=R*T/(Vbar-b)-a/(Vbar(Vbar+b)+b(Vbar-b))#Peng-Robinson
cat(P)
