print "Solving differential equation representing simple harmonic Motion"

#Declaring mass, time and spring constant as m, t and k respectively
m=var('m')
t=var('t')
k=var('k')


#c=var('c')
#Declaring displacement is fuction of time
x = function('x',t)

#Assuming spring constant and mass are greater than zero
assume(k>0)
assume(m>0)

#Writing differential equation
de= diff(x,t,2)+(k*x)/m

#Solving differential equation
z = desolve(de,dvar=x,ivar=t)

#printing the result of  differential equation
print(z)

