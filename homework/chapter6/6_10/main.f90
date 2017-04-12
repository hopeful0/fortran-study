PROGRAM main
!
! Purpose:
!  Just for homework 10 in chapter6
!
! Record of revisions:
!    Date   Programmer  Description of change
!    ====   ==========  =====================
!  04/12/17  hopeful       Original code
!
IMPLICIT NONE

REAL, EXTERNAL :: v
REAL :: p

DO p = 1, 1001, 100
    WRITE (*,*) 'The v of gas when P = ', p, ' kPa and T = ', 273, 'K is ', v(p,273.0), ' m3.'
END DO
DO p = 1, 1001, 100
    WRITE (*,*) 'The v of gas when P = ', p, ' kPa and T = ', 300, 'K is ', v(p,300.0), ' m3.'
END DO

END PROGRAM main

! 求理想气体体积
REAL FUNCTION v(p, t)
IMPLICIT NONE

REAL, PARAMETER :: n = 1.0
REAL, PARAMETER :: R = 8.31441
REAL :: p
REAL :: t

v = n * R * t * 1000 / p
RETURN
END FUNCTION v
