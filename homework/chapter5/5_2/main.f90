program main
	implicit none
	integer :: day
	character*10 :: item = 'unknown'
	
	write (*,'(A)') 'Please input which day''s program you want to search:'
	read  (*,'(I1)') day
	select case (day)
		case (1,4)
			item = '����'
		case (2,5)
			item = '���Ӿ�'
		case (3,6)
			item = '��ͨƬ'
		case (7)
			item = '��Ӱ'
	end select
	write (*,'(A,I1,A,A)') 'Day', day, ' will play ', item
	pause
end program main