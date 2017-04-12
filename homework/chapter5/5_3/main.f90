program main
	implicit none
	integer :: age
	real :: income
	real :: tax
	real :: t1, t2, t3

	write (*,'(A)') 'Please input your age:'
	read  (*,*) age
	write (*,'(A)') 'Please input your income(yuan) per month:'
	read  (*,*) income
	if (age < 50) then
		t1 = 0.03
		t2 = 0.1
		t3 = 0.15
	else
		t1 = 0.05
		t2 = 0.07
		t3 = 0.1
	end if
	if (income < 1000) then
		tax = income * t1
	else if (income < 5000) then
			tax = 1000 * t1 + (income - 1000) * t2
	else
			tax = 1000 * t1 + 4000 * t2 + (income - 5000) * t3
	end if
	write (*,'(A,F0.2,A)') 'Your tax is ', tax, 'yuan.'
	pause
end program main