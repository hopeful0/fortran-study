program main
    implicit none
    real :: frequency
    open(unit=1, file='out.txt')
    write (1,"(A, F0.6)") 'The resonant frequency of the circuit is ', frequency(real(100), 0.1E-3, 0.25E-9)
    close(1)
    stop
end program main

function frequency(r, l, c)
    implicit none
    real, parameter :: pi = 3.1415926535
    real :: r
    real :: l
    real :: c
    real :: frequency
    frequency = 1.0 / (2 * pi * (l * c) ** 0.5)
    return
end function
