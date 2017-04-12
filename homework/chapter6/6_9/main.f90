PROGRAM main
!
! Purpose:
!  Just for homework 9 in chapter6
!
! Record of revisions:
!    Date   Programmer  Description of change
!    ====   ==========  =====================
!  04/12/17  hopeful       Original code
!
IMPLICIT NONE

REAL,ALLOCATABLE :: nums(:)
INTEGER :: length
INTEGER :: i
REAL, EXTERNAL :: RMS

WRITE (*,*) 'Please input the data'' length:'
READ  (*,*) length
ALLOCATE(nums(length))
WRITE (*,*) 'Please input numbers:'
DO i = 1, length
    READ  (*,*) nums(i)
END DO

WRITE (*,*) 'The RMS of those number is ', RMS(nums, length)
DEALLOCATE(nums)
END PROGRAM main

! 求均方根平均值的函数
REAL FUNCTION RMS(nums,length)
IMPLICIT NONE

INTEGER :: length
REAL :: nums(length)
INTEGER :: i

RMS = SQRT(SUM(nums*nums)/length)
RETURN
END FUNCTION RMS
