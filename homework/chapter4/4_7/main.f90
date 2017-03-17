program main
    implicit none
    real :: l
    real, external :: period
    open(unit=1, file='out.txt')
    write (*, "(A)") 'Please input the length of pendulum:'
    read  (*, *) l
    write (1, "(A, 2(F0.6, A))") 'The period of the pendulum with length ', l, 'm is ', period(l), 's.'
    close(1)
    stop
end program main

function period(l)
    implicit none
    real :: l
    real :: period
    real, parameter :: pi = 3.1415926535
    real, parameter :: g = 9.80665
    period = 2 * pi * (l / g) ** 0.5
    return
end function
