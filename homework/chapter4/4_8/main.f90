program main
    implicit none
    real, external :: distance
    open(unit=1, file='out.txt')
    write (1,"(A, F0.6)") 'The distance between (-1,1) and (6,2) is ', distance(-1.0, 1.0, 6.0, 2.0)
    close(1)
    stop
end program main

function distance(ax, ay, bx, by)
    implicit none
    real :: ax
    real :: ay
    real :: bx
    real :: by
    real :: distance
    distance = ((bx - ax) ** 2 + (by - ay) ** 2) ** 0.5
    return
end function
