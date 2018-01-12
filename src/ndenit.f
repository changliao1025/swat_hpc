      subroutine ndenit(k,j,cdg,wdn,void)
!     !    this subroutine computes denitrification

      use parm
      integer :: k,j
      real :: cdg, wdn, void
      real :: dummy0

      wdn = 0.
      vof = 1. / (1. + (void/0.04)**5)
      !!chang edited this
      dummy0 = -cdn(j) * cdg * vof * sol_cbn(k,j) 
      wdn = sol_no3(k,j) * (1.0 - Exp( dummy0  ) )
      sol_no3(k,j) = sol_no3(k,j) - wdn

      return
      end
