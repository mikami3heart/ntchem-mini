#ifdef PMLIB_EXPLICIT
	subroutine Util_PMLIB_Start(Name)
	character(*), intent(in) :: Name
	call f_pm_start (Name)
	end subroutine
#else
!cx	#if defined(FIPP) ||defined(FAPP) ||defined(FAPPXL) ||defined(PMLIB)
	subroutine Util_HWC_Start(Name, Number, Level)
	implicit none
	character(*), intent(in) :: Name
	integer, intent(in) :: Number
	integer, intent(in) :: Level
#ifdef FIPP
	CALL FIPP_START
#endif
#ifdef FAPP
	CALL FAPP_START(Name, Number, Level)
#endif
#ifdef FAPPXL
	CALL START_COLLECTION(Name)
#endif
#ifdef PMLIB
	call f_pm_start (Name)
#endif
	end subroutine
#endif

