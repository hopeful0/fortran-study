PROGRAM main
!
! Purpose:
!  Just for homework 8 in chapter6
!
! Record of revisions:
!    Date   Programmer  Description of change
!    ====   ==========  =====================
!  04/12/17  hopeful       Original code
!
IMPLICIT NONE
INTEGER :: I
INTEGER :: countA, countB

countA = 1
countB = 1
DO I = 0, 24, 6
    call CMA(1, I, countA)
    call CMB(1, I, countB)
    WRITE (*,*) 'After ', I, ' hours, culture medium A has ', countA, ' germs.' 
    WRITE (*,*) 'After ', I, ' hours, culture medium B has ', countB, ' germs.'
END DO

END PROGRAM main

SUBROUTINE CMA (icount, time, fcount)
IMPLICIT NONE

INTEGER :: icount  ! 初始数目
INTEGER :: time    ! 培养时间(h)
INTEGER :: fcount  ! 最终数目

fcount = icount * 2 ** (time * 60 / 90)

END SUBROUTINE CMA

SUBROUTINE CMB (icount, time, fcount)
IMPLICIT NONE
    
INTEGER :: icount  ! 初始数目
INTEGER :: time    ! 培养时间(h)
INTEGER :: fcount  ! 最终数目

fcount = icount * 2 ** (time * 60 / 120)

END SUBROUTINE CMB
