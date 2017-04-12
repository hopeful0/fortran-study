PROGRAM main
!
! Purpose:
!  Just for homework 7 in chapter6
!
! Record of revisions:
!    Date   Programmer  Description of change
!    ====   ==========  =====================
!  04/12/17  hopeful       Original code
!
IMPLICIT NONE

INTEGER :: dec

! test
call test(256)
call test(63)
call test(140)
call test(768)

WRITE (*,'(A)') 'Please input a integer between 0 and 1023:'
READ  (*,*) dec
call test(dec)
END PROGRAM main

SUBROUTINE test(dec)
IMPLICIT NONE

INTEGER :: dec
CHARACTER*10, EXTERNAL :: dec2bin

WRITE (*,'(A,I4,A,A)') 'The Binary number of ', dec , ' is ', dec2bin(dec)

END SUBROUTINE test

CHARACTER(len=*) FUNCTION dec2bin(dec)
IMPLICIT NONE

INTEGER :: dec
INTEGER :: ndec
INTEGER :: I

ndec = dec
DO I = LEN(dec2bin), 0, -1
    WRITE (dec2bin(I:I),'(I1)') mod(ndec,2)
    ndec = ndec / 2
    !IF (ndec == 0) EXIT
END DO
!WRITE (*,'(B10)') dec

RETURN
END FUNCTION dec2bin
