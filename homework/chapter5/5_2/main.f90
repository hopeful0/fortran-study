program main
	implicit none
	integer :: day
	character*10 :: item = 'unknown'
	
	write (*,'(A)') 'Please input which day''s program you want to search:'
	read  (*,'(I1)') day
	select case (day)
		case (1,4)
			item = '新闻'
		case (2,5)
			item = '电视剧'
		case (3,6)
			item = '卡通片'
		case (7)
			item = '电影'
	end select
	write (*,'(A,I1,A,A)') 'Day', day, ' will play ', item
	pause
end program main