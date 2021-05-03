! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.2+fortran
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module libcaf_gfortran_desc_m
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! DECLARATION CONSTRUCTS
 enum, bind(c)
  enumerator :: BT_UNKNOWN = 0
  enumerator :: BT_INTEGER
  enumerator :: BT_LOGICAL
  enumerator :: BT_REAL
  enumerator :: BT_COMPLEX
  enumerator :: BT_DERIVED
  enumerator :: BT_CHARACTER
  enumerator :: BT_CLASS
  enumerator :: BT_PROCEDURE
  enumerator :: BT_HOLLERITH
  enumerator :: BT_VOID
  enumerator :: BT_ASSUMED
 end enum
 public :: BT_UNKNOWN, BT_INTEGER, BT_LOGICAL, BT_REAL, BT_COMPLEX, BT_DERIVED, BT_CHARACTER, BT_CLASS, BT_PROCEDURE, &
    BT_HOLLERITH, BT_VOID, BT_ASSUMED

 integer, parameter :: swig_cmem_own_bit = 0
 integer, parameter :: swig_cmem_rvalue_bit = 1
 type, bind(C) :: SwigClassWrapper
  type(C_PTR), public :: cptr = C_NULL_PTR
  integer(C_INT), public :: cmemflags = 0
 end type
 ! struct struct descriptor_dimension
 type, public :: descriptor_dimension
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: set_stride_ => swigf_descriptor_dimension__stride_set
  procedure :: get_stride_ => swigf_descriptor_dimension__stride_get
  procedure :: set_lower_bound => swigf_descriptor_dimension_lower_bound_set
  procedure :: get_lower_bound => swigf_descriptor_dimension_lower_bound_get
  procedure :: set_ubound_ => swigf_descriptor_dimension__ubound_set
  procedure :: get_ubound_ => swigf_descriptor_dimension__ubound_get
  procedure :: release => swigf_descriptor_dimension_release
  procedure, private :: swigf_descriptor_dimension_op_assign__
  generic :: assignment(=) => swigf_descriptor_dimension_op_assign__
 end type descriptor_dimension
 ! struct struct gfc_descriptor_t
 type, public :: gfc_descriptor_t
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: set_base_addr => swigf_gfc_descriptor_t_base_addr_set
  procedure :: get_base_addr => swigf_gfc_descriptor_t_base_addr_get
  procedure :: set_offset => swigf_gfc_descriptor_t_offset_set
  procedure :: get_offset => swigf_gfc_descriptor_t_offset_get
  procedure :: set_dtype => swigf_gfc_descriptor_t_dtype_set
  procedure :: get_dtype => swigf_gfc_descriptor_t_dtype_get
  procedure :: get_dim => swigf_gfc_descriptor_t_dim_get
  procedure :: release => swigf_gfc_descriptor_t_release
  procedure, private :: swigf_gfc_descriptor_t_op_assign__
  generic :: assignment(=) => swigf_gfc_descriptor_t_op_assign__
 end type gfc_descriptor_t
 public :: get_GFC_MAX_DIMENSIONS
 public :: get_GFC_DTYPE_RANK_MASK
 public :: get_GFC_DTYPE_TYPE_SHIFT
 public :: get_GFC_DTYPE_TYPE_MASK
 public :: get_GFC_DTYPE_SIZE_SHIFT
 public :: get_GFC_DTYPE_CHARACTER
 interface gfc_descriptor_t
  module procedure swigf_new_gfc_descriptor_t
 end interface
 interface descriptor_dimension
  module procedure swigf_new_descriptor_dimension
 end interface

! WRAPPER DECLARATIONS
interface
subroutine swigc_descriptor_dimension__stride_set(farg1, farg2) &
bind(C, name="_wrap_descriptor_dimension__stride_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG), intent(in) :: farg2
end subroutine

function swigc_descriptor_dimension__stride_get(farg1) &
bind(C, name="_wrap_descriptor_dimension__stride_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG) :: fresult
end function

subroutine swigc_descriptor_dimension_lower_bound_set(farg1, farg2) &
bind(C, name="_wrap_descriptor_dimension_lower_bound_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG), intent(in) :: farg2
end subroutine

function swigc_descriptor_dimension_lower_bound_get(farg1) &
bind(C, name="_wrap_descriptor_dimension_lower_bound_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG) :: fresult
end function

subroutine swigc_descriptor_dimension__ubound_set(farg1, farg2) &
bind(C, name="_wrap_descriptor_dimension__ubound_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG), intent(in) :: farg2
end subroutine

function swigc_descriptor_dimension__ubound_get(farg1) &
bind(C, name="_wrap_descriptor_dimension__ubound_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG) :: fresult
end function

function swigc_new_descriptor_dimension() &
bind(C, name="_wrap_new_descriptor_dimension") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_descriptor_dimension(farg1) &
bind(C, name="_wrap_delete_descriptor_dimension")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
end subroutine

subroutine swigc_descriptor_dimension_op_assign__(farg1, farg2) &
bind(C, name="_wrap_descriptor_dimension_op_assign__")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
type(SwigClassWrapper), intent(in) :: farg2
end subroutine

subroutine swigc_gfc_descriptor_t_base_addr_set(farg1, farg2) &
bind(C, name="_wrap_gfc_descriptor_t_base_addr_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
type(C_PTR), intent(in) :: farg2
end subroutine

function swigc_gfc_descriptor_t_base_addr_get(farg1) &
bind(C, name="_wrap_gfc_descriptor_t_base_addr_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
type(C_PTR) :: fresult
end function

subroutine swigc_gfc_descriptor_t_offset_set(farg1, farg2) &
bind(C, name="_wrap_gfc_descriptor_t_offset_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_SIZE_T), intent(in) :: farg2
end subroutine

function swigc_gfc_descriptor_t_offset_get(farg1) &
bind(C, name="_wrap_gfc_descriptor_t_offset_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_SIZE_T) :: fresult
end function

subroutine swigc_gfc_descriptor_t_dtype_set(farg1, farg2) &
bind(C, name="_wrap_gfc_descriptor_t_dtype_set")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG), intent(in) :: farg2
end subroutine

function swigc_gfc_descriptor_t_dtype_get(farg1) &
bind(C, name="_wrap_gfc_descriptor_t_dtype_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
integer(C_LONG) :: fresult
end function

function swigc_gfc_descriptor_t_dim_get(farg1) &
bind(C, name="_wrap_gfc_descriptor_t_dim_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

function swigc_new_gfc_descriptor_t() &
bind(C, name="_wrap_new_gfc_descriptor_t") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_gfc_descriptor_t(farg1) &
bind(C, name="_wrap_delete_gfc_descriptor_t")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
end subroutine

subroutine swigc_gfc_descriptor_t_op_assign__(farg1, farg2) &
bind(C, name="_wrap_gfc_descriptor_t_op_assign__")
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(SwigClassWrapper), intent(inout) :: farg1
type(SwigClassWrapper), intent(in) :: farg2
end subroutine

function swigc_GFC_MAX_DIMENSIONS_get() &
bind(C, name="_wrap_GFC_MAX_DIMENSIONS_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

function swigc_GFC_DTYPE_RANK_MASK_get() &
bind(C, name="_wrap_GFC_DTYPE_RANK_MASK_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

function swigc_GFC_DTYPE_TYPE_SHIFT_get() &
bind(C, name="_wrap_GFC_DTYPE_TYPE_SHIFT_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

function swigc_GFC_DTYPE_TYPE_MASK_get() &
bind(C, name="_wrap_GFC_DTYPE_TYPE_MASK_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

function swigc_GFC_DTYPE_SIZE_SHIFT_get() &
bind(C, name="_wrap_GFC_DTYPE_SIZE_SHIFT_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

function swigc_GFC_DTYPE_CHARACTER_get() &
bind(C, name="_wrap_GFC_DTYPE_CHARACTER_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

end interface


contains
 ! MODULE SUBPROGRAMS
subroutine swigf_descriptor_dimension__stride_set(self, arg1)
use, intrinsic :: ISO_C_BINDING
class(descriptor_dimension), intent(in) :: self
integer(C_LONG), intent(in) :: arg1
type(SwigClassWrapper) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigdata
farg2 = arg1
call swigc_descriptor_dimension__stride_set(farg1, farg2)
end subroutine

function swigf_descriptor_dimension__stride_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swig_result
class(descriptor_dimension), intent(in) :: self
integer(C_LONG) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_descriptor_dimension__stride_get(farg1)
swig_result = fresult
end function

subroutine swigf_descriptor_dimension_lower_bound_set(self, lower_bound)
use, intrinsic :: ISO_C_BINDING
class(descriptor_dimension), intent(in) :: self
integer(C_LONG), intent(in) :: lower_bound
type(SwigClassWrapper) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigdata
farg2 = lower_bound
call swigc_descriptor_dimension_lower_bound_set(farg1, farg2)
end subroutine

function swigf_descriptor_dimension_lower_bound_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swig_result
class(descriptor_dimension), intent(in) :: self
integer(C_LONG) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_descriptor_dimension_lower_bound_get(farg1)
swig_result = fresult
end function

subroutine swigf_descriptor_dimension__ubound_set(self, arg1)
use, intrinsic :: ISO_C_BINDING
class(descriptor_dimension), intent(in) :: self
integer(C_LONG), intent(in) :: arg1
type(SwigClassWrapper) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigdata
farg2 = arg1
call swigc_descriptor_dimension__ubound_set(farg1, farg2)
end subroutine

function swigf_descriptor_dimension__ubound_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swig_result
class(descriptor_dimension), intent(in) :: self
integer(C_LONG) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_descriptor_dimension__ubound_get(farg1)
swig_result = fresult
end function

function swigf_new_descriptor_dimension() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(descriptor_dimension) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_descriptor_dimension()
self%swigdata = fresult
end function

subroutine swigf_descriptor_dimension_release(self)
use, intrinsic :: ISO_C_BINDING
class(descriptor_dimension), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (btest(farg1%cmemflags, swig_cmem_own_bit)) then
call swigc_delete_descriptor_dimension(farg1)
endif
farg1%cptr = C_NULL_PTR
farg1%cmemflags = 0
self%swigdata = farg1
end subroutine

subroutine swigf_descriptor_dimension_op_assign__(self, other)
use, intrinsic :: ISO_C_BINDING
class(descriptor_dimension), intent(inout) :: self
type(descriptor_dimension), intent(in) :: other
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = other%swigdata
call swigc_descriptor_dimension_op_assign__(farg1, farg2)
self%swigdata = farg1
end subroutine

subroutine swigf_gfc_descriptor_t_base_addr_set(self, base_addr)
use, intrinsic :: ISO_C_BINDING
class(gfc_descriptor_t), intent(in) :: self
type(C_PTR), intent(in) :: base_addr
type(SwigClassWrapper) :: farg1 
type(C_PTR) :: farg2 

farg1 = self%swigdata
farg2 = base_addr
call swigc_gfc_descriptor_t_base_addr_set(farg1, farg2)
end subroutine

function swigf_gfc_descriptor_t_base_addr_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: swig_result
class(gfc_descriptor_t), intent(in) :: self
type(C_PTR) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_gfc_descriptor_t_base_addr_get(farg1)
swig_result = fresult
end function

subroutine swigf_gfc_descriptor_t_offset_set(self, offset)
use, intrinsic :: ISO_C_BINDING
class(gfc_descriptor_t), intent(in) :: self
integer(C_SIZE_T), intent(in) :: offset
type(SwigClassWrapper) :: farg1 
integer(C_SIZE_T) :: farg2 

farg1 = self%swigdata
farg2 = offset
call swigc_gfc_descriptor_t_offset_set(farg1, farg2)
end subroutine

function swigf_gfc_descriptor_t_offset_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_SIZE_T) :: swig_result
class(gfc_descriptor_t), intent(in) :: self
integer(C_SIZE_T) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_gfc_descriptor_t_offset_get(farg1)
swig_result = fresult
end function

subroutine swigf_gfc_descriptor_t_dtype_set(self, dtype)
use, intrinsic :: ISO_C_BINDING
class(gfc_descriptor_t), intent(in) :: self
integer(C_LONG), intent(in) :: dtype
type(SwigClassWrapper) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigdata
farg2 = dtype
call swigc_gfc_descriptor_t_dtype_set(farg1, farg2)
end subroutine

function swigf_gfc_descriptor_t_dtype_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swig_result
class(gfc_descriptor_t), intent(in) :: self
integer(C_LONG) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_gfc_descriptor_t_dtype_get(farg1)
swig_result = fresult
end function

function swigf_gfc_descriptor_t_dim_get(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
type(descriptor_dimension) :: swig_result
class(gfc_descriptor_t), intent(in) :: self
type(SwigClassWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_gfc_descriptor_t_dim_get(farg1)
swig_result%swigdata = fresult
end function

function swigf_new_gfc_descriptor_t() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(gfc_descriptor_t) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_gfc_descriptor_t()
self%swigdata = fresult
end function

subroutine swigf_gfc_descriptor_t_release(self)
use, intrinsic :: ISO_C_BINDING
class(gfc_descriptor_t), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (btest(farg1%cmemflags, swig_cmem_own_bit)) then
call swigc_delete_gfc_descriptor_t(farg1)
endif
farg1%cptr = C_NULL_PTR
farg1%cmemflags = 0
self%swigdata = farg1
end subroutine

subroutine swigf_gfc_descriptor_t_op_assign__(self, other)
use, intrinsic :: ISO_C_BINDING
class(gfc_descriptor_t), intent(inout) :: self
type(gfc_descriptor_t), intent(in) :: other
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = other%swigdata
call swigc_gfc_descriptor_t_op_assign__(farg1, farg2)
self%swigdata = farg1
end subroutine

function get_GFC_MAX_DIMENSIONS() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_GFC_MAX_DIMENSIONS_get()
swig_result = fresult
end function

function get_GFC_DTYPE_RANK_MASK() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_GFC_DTYPE_RANK_MASK_get()
swig_result = fresult
end function

function get_GFC_DTYPE_TYPE_SHIFT() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_GFC_DTYPE_TYPE_SHIFT_get()
swig_result = fresult
end function

function get_GFC_DTYPE_TYPE_MASK() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_GFC_DTYPE_TYPE_MASK_get()
swig_result = fresult
end function

function get_GFC_DTYPE_SIZE_SHIFT() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_GFC_DTYPE_SIZE_SHIFT_get()
swig_result = fresult
end function

function get_GFC_DTYPE_CHARACTER() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_GFC_DTYPE_CHARACTER_get()
swig_result = fresult
end function


end module
