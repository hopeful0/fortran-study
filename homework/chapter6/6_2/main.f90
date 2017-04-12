program main
    implicit none
    integer :: counter
    integer :: sum = 0

    do counter = 1, 99, 2
        sum = sum + counter
    end do
    write (*,'(A, I0)') 'The result of 1+3+5+7+9+...+99 is ', sum
end program main
