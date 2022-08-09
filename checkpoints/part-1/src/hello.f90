PROGRAM hello
    IMPLICIT NONE

    ! Scalars
    REAL            :: x
    INTEGER         :: i
    REAL, PARAMETER :: pi = 4*ATAN(1.0)

    ! Vectors/Matrices
    REAL, DIMENSION(10)     :: v 
    INTEGER, DIMENSION(10)  :: v_int
    REAL, DIMENSION(10, 10) :: M 

    ! Assign values    
    x = -1.4
    i = 12
    v = 1

    ! Print values
    PRINT *, x, i
    PRINT *, v
    
    ! Assign identity matrix
    ! Start with 0
    M = 0

    ! Fill diagonal
    DO i = 1, 10
        M(i, i) = 1
    END DO

    PRINT *, MATMUL(M, v)

END PROGRAM