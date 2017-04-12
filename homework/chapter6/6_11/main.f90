PROGRAM main
!
! Purpose:
!  Just for homework 11 in chapter6
!
! Record of revisions:
!    Date   Programmer  Description of change
!    ====   ==========  =====================
!  04/12/17  hopeful       Original code
!
IMPLICIT NONE

REAL, EXTERNAL :: r
INTEGER :: theta
REAL :: e

e = 0
DO WHILE (e < 0.6)
    DO theta = 0, 360, 5
        WRITE (*,*) 'The r = ', r(theta,e), ' km when e = ', e, ' and theta = ', theta, '.'
    END DO
e = e + 0.25
END DO

END PROGRAM main

! 人造卫星相对地球中心的距离
REAL FUNCTION r(theta, e)
IMPLICIT NONE

REAL, PARAMETER :: p = 1200
REAL, PARAMETER :: DEG2RAD = 3.141592653589 / 180.0
INTEGER :: theta
REAL :: e

r = p / (1 + e * COS(theta * DEG2RAD))
RETURN
END FUNCTION r
