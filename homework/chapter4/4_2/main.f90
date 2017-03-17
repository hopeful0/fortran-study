program main
	implicit none
	real(kind=8), parameter :: pi = 3.14159265358979
	real(kind=4) :: radius
	write (*,"(A)") 'Please input the radius of a circle:'
	read  (*,*) radius
	write (*,"(A, F0.8)") 'The circle''s area is ', (pi*radius**2)
	stop
end program main
