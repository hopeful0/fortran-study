program main
    implicit none
    character(len=100) :: string
    character(len=100) :: deleteSpace

    write (*,'(A)') 'Please input a string contains some spaces:'
    read  (*,'(A)') string
    write (*,'(A,/,A)') 'The new string after deleting spaces is:', trim(deleteSpace(string))
end program main

function deleteSpace(string)
    implicit none
    character(len=*) :: string
    character(len=*) :: deleteSpace
    integer :: counter, counter2 = 0

    deleteSpace = ''
    do counter = 0, len(string)
        if (string(counter:counter) /= ' ') then
            deleteSpace(counter2:counter2) = string(counter:counter)
            counter2 = counter2 + 1
        end if
    end do
    return
end function
