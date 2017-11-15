#ifdef PMLIB_EXPLICIT
	subroutine Util_PMLIB_Stop(Name, excount, ntimes)
	character(*), intent(in) :: Name
	real(kind=8), intent(in) :: excount
	integer, intent(in) :: ntimes
	call f_pm_stop (Name, excount, ntimes)
	end subroutine
#else
!cx	#if defined(FIPP) ||defined(FAPP) ||defined(FAPPXL) ||defined(PMLIB)
	subroutine Util_HWC_Stop(Name, Number, Level)
	implicit none
	character(*), intent(in) :: Name
	integer, intent(in) :: Number
	integer, intent(in) :: Level
#ifdef FIPP
	CALL FIPP_STOP
#endif
#ifdef FAPP
	CALL FAPP_STOP(Name, Number, Level)
#endif
#ifdef FAPPXL
	CALL STOP_COLLECTION(Name)
#endif
#ifdef PMLIB
	call f_pm_stop (Name, 0.0d0, 0)
#endif
	end subroutine
#endif

