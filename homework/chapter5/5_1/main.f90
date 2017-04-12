program main
	implicit none
	real :: income
	real :: tax = 0
	write (*,'(A)') 'Please input your income(yuan) per month:'
	read  (*,*) income
	if (income < 1000) then
		tax = income * 0.03
	else if (income < 5000) then
			tax = 1000 * 0.03 + (income - 1000) * 0.1
	else
			tax = 1000 * 0.03 + 4000 * 0.1 + (income - 5000) * 0.15
	end if
	write (*,'(A,F0.2,A)') 'Your tax is ', tax, 'yuan.'
	pause
end program main