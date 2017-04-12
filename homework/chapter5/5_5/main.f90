program main 
    implicit none 
    real :: refraction
	real :: deg2rad
	real :: rad2deg
    real :: n1 = 1.0
    real :: n2 = 1.7
    real :: theta1
    real :: theta2
    write (*,'(A3,1X,A3,1X,A7,A7)') 'n1', 'n2', 'theta1', 'theta2'
    write (*,'(A)') '====================='
    do theta1 = 0, 90, 15
        write (*,'(F3.1,1X,F3.1,1X,F6.2,1X,F6.2)') n1, n2, theta1, rad2deg(refraction(deg2rad(theta1), n1, n2))
    end do
    write (*,'(A)') '====================='
    do theta1 = 0, 90, 1
        theta2 = rad2deg(refraction(deg2rad(theta1), n2, n1))
        if (isnan(theta2)) then
            write (*,'(F3.1,1X,F3.1,1X,F6.2,1X,A)') n2, n1, theta1, '全反射'
            exit
        end if
        if (theta2 > 60) then
            write (*,'(F3.1,1X,F3.1,1X,F6.2,1X,F6.2)') n2, n1, theta1, theta2
        end if
    end do
    write (*,'(A)') '====================='
    n2 = 1.5
    do while (n2 < 2.0)
        do theta1 = 0, 90, 1
            theta2 = rad2deg(refraction(deg2rad(theta1), n2, n1))
            if (isnan(theta2)) then
                write (*,'(F3.1,1X,F3.1,1X,F6.2,1X,A)') n2, n1, theta1, '全反射'
                exit
            end if
            if (theta2 > 60) then
                write (*,'(F3.1,1X,F3.1,1X,F6.2,1X,F6.2)') n2, n1, theta1, theta2
            end if
        end do
        write (*,'(A)') '====================='
        n2 = n2 + 0.1
    end do
end program main 
  
function refraction(theta1, n1, n2) 
    implicit none 
    real :: theta1
    real :: n1
    real :: n2
    real :: refraction 
    
    refraction = asin(sin(theta1) * n1 / n2)
    return 
end function 

function rad2deg(rad)
    implicit none
	real,parameter :: pi = 3.14159265358979
	real :: rad
	real :: rad2deg

    rad2deg = rad / pi * 180.0
    return
end function

function deg2rad(deg)
    implicit none
	real,parameter :: pi = 3.14159265358979
	real :: deg
	real :: deg2rad

    deg2rad = deg / 180.0 * pi
    return
end function
