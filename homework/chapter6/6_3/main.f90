program main
    implicit none
    real, parameter :: weight = 45.0  ! 答案
    real, parameter :: e = 0.001 ! 误差
    real :: guess = 0.0  ! 猜测值
    integer :: counter  ! 计数器

    do counter = 0, 4
        write (*,*) 'Weight:'
        read  (*,*) guess
        if (abs(guess - weight) <= e) then
            write (*,*) 'You are right!'
            stop
        end if
    end do
    write (*,*) 'You are Wrong!'
end program main
