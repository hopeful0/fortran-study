program main
    implicit none
    integer :: counter
    !integer :: counter2
    real :: sum = 0
    integer :: factorial

    do counter = 1, 10
        !factorial = 1
        !do counter2 = 2, n
        !    factorial = factorial * counter2
        !end do
        sum = sum + 1.0 / factorial(counter)
    end do
    write (*,'(A, F0.6)') 'The result of 1/1!+1/2!+1/3!+1/$!+9+...+1/10! is ', sum
end program main

function factorial(n)
    implicit none
    integer :: n
    integer :: factorial
    integer :: counter

    factorial = 1
    do counter = 2, n
        factorial = factorial * counter
    end do
    return
end function
