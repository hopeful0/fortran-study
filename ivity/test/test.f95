program test
    ! This is a comment.

    ! The decleartion statement must be in the front.
    ! declear test
    integer a ! declear a integer variable named 'a'(default: long integer with 4 byte)
    real b ! declear a real variable named 'b'(default: single real with 4 byte)
    complex c ! declear a complex variable named 'c'(default: single complex with two single real value)
    character d ! declear a character variable named 'd'(default: one character)
    logical e ! declear a logical variable named 'e'(default value is false)
    integer(kind=4) aa ! declear a long integer variable with 4 byte after F90
    integer*2 ab ! declear a short integer variable with 2 byte in F77
    integer(1) ac ! declear a integer variable with 1 byte(shorter than short integer) in F77
    real(kind=8) ba ! declear a double real variable with 8 byte have 15 effective numbers
    complex*8 ca ! declear a double complex variable with two double real value
    character(len=10) da ! declear a string with 10 characters after F90
    character*10 db ! declear a string with 10 characters in F77
    logical :: ea = .true. ! declear a variable with '::' and assign a value after F90
    print *, 'ea=', ea

    ! print test (output)
    print *, 'print test!' ! print is a write which set UNIT is '*'(screen)

    ! write test (output)
    write (*,*) 'write test!' ! the frist '*' is UNIT(6), and the second '*' is FMT(nothing special)
    write ( UNIT=6, FMT=* ) 'full write test', '!' ! there is no ',' in the book.It will wrong with my compiler.

    ! assign test
    print *, 'a =', a
    a = 1
    print *, 'a =', a
    print *, 'b =', b
    b = 3.14159265358979 ! The single real variable only hava 6 effective number after dot. It seems the assign numbers is a single real variable.
    print *, 'b =', b
    print *, 'c =', c
    c = (1.0,0.1)
    print *, 'c =', c
    print *, 'd =', d
    d = "a" ! Only """ can use to assign a character variable in F77
    print *, 'd =', d
    d = 'ab' ! Only the frist character will be assigned.
    print *, 'd =', d
    print *, 'e =', e
    e = .true. ! two dots must in two sides of 'true' or 'false'
    print *, 'e =', e

    ! read test (input)
    print *, 'please input a integer'
    read (*,*) a ! read a integer from keyboard
    print *, 'your number =', a

    ! stop program (unnecessary)
    stop

end program test
