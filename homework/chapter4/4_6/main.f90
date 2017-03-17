program main
	implicit none
	real,external :: freeFall
    open(unit=1, file='out.txt')
	write (1, "('There are some ball''s velocity when they free fall to ground.')")
	write (1, "('high    velocity')")
	write (1, "('1       ', F0.6)") freeFall(1.0)
	write (1, "('10      ', F0.6)") freeFall(10.0)
	write (1, "('100     ', F0.6)") freeFall(100.0)
	close(11)
	stop
end program main

function freeFall(high)
	implicit none
	real,parameter :: g = 9.80665
    real :: high
	real :: freeFall
	freeFall = (2 * g * high) ** 0.5
	return
end function
