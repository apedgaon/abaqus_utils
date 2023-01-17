      subroutine umat (stress,  statev,  ddsdde,  sse,     spd,
     &          scd,     rpl,     ddsddt,  drplde,  drpldt,
     &          stran,  dstran, time,    dtime,   temp,
     &          dtemp,   predef,  dpred,   cmname,  ndi,
     &          nshr,    ntens,   nstatv,  props,   nprops,
     &          coords,  drot,    pnewdt,  celent,  dfgrd0,
     &          dfgrd1,  noel,    npt,     layer,   kspt,
     &          kstep,   kinc)

      implicit real*8(a-h,o-z)
      character*80 cmname

!------------------------------------------------------------------
!  Dimension UMAT argument arrays
!------------------------------------------------------------------

      dimension
     &  coords(3),           ! Coordinates of Gauss point
     &  ddsdde(ntens,ntens), ! Tangent Stiffness Matrix
     &  ddsddt(ntens),       ! Derivative of stress wrt temperature
     &  dfgrd0(3,3),         ! Deformation gradient at beginning of step
     &  dfgrd1(3,3),         ! Deformation gradient at end of step
     &  dpred(1),            ! Predefined state variable array increment
     &  drplde(ntens),       ! Derivative of heat generation wrt strain
     &  drot(3,3),           ! Rotation matrix increment
     &  dstran(ntens),       ! Strain vector increment
     &  predef(1),           ! Predefined variable array
     &  props(nprops),       ! Material properties array
     &  statev(nstatv),      ! State variables array
     &  stran(ntens),        ! Strain vector at beginning of increment
     &  stress(ntens),       ! Cauchy stress vector
     &  time(2)              ! Step time (1) and total time (2)

        ! User code
        stress = 0.d0
        ddsdde = 0.d0

        a = 2
        b = 3
        call my_add(a, b, c)
        
        return
      end
 
      subroutine uvarm(uvar, direct, T, time, dtime, cmname,
     &                 orname, nuvarm, noel, npt, layer, kspt,
     &                 kstep, kinc, ndi, nshr, coord, jmac,
     &                 jmatyp, matlayo, laccfla)
        implicit real*8(a-h,o-z)

        character*80 cmname, orname
        character*3 flgray(15)
        dimension uvar(nuvarm), direct(3,3), T(3,3), time(2)
        dimension array(15), jarray(15), jmac(*), jmatyp(*)
        dimension coord(*)

C     The dimensions of the variables FLGRAY, ARRAY and JARRAY
C     must be set equal to or greater than 15.

        return
      end
