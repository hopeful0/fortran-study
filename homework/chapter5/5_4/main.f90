program main
	implicit none
	integer :: year
	integer :: day = 365
	
	write (*,'(A)') 'Please input the year you want to konw :'
	read  (*,*) year
	if ((mod(year, 4) == 0) .and. ((mod(year, 100) == 0) .and. (mod(year, 400) == 0))) then
		day = day + 1
	end if
	write (*,'(A,I0,A,I0,A)') 'Year', year, ' has ', day, 'days.'
	pause
end program main
