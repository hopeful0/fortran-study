program main
	implicit none
	integer :: grade
	write (*,"(A)") 'Please your initial grade:'
	read  (*,*) grade
	write (*,"(A, F0.2)") 'your final grade is ', (grade**0.5*10)
	stop
end program main
