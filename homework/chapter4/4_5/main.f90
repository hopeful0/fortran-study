program main
	implicit none
	type :: distance
		real :: m
		real :: cm
		real :: inch
	end type distance
	type(distance) :: d

	write (*,"(A)") 'Please a distance by meter:'
	read  (*,*) d%m
	d%cm = d%m * 100
	d%inch = d%m * 39.3700787
	write (*,"('The distance ', F0.6, 'm is same as ', F0.6, 'cm and ', F0.6, 'inch.')") d%m, d%cm, d%inch

	stop
end
