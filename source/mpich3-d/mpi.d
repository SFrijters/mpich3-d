import core.stdc.config;

extern (C):

alias ADIOI_FileD* MPI_File;
alias int MPI_Op;
alias MPIR_Win_flavor MPIR_Win_flavor_t;
alias MPIR_Win_model MPIR_Win_model_t;
alias MPIR_Topo_type MPIR_Topo_type;
alias <unimplemented> MPI_Handler_function;
alias <unimplemented> MPI_Comm_copy_attr_function;
alias <unimplemented> MPI_Comm_delete_attr_function;
alias <unimplemented> MPI_Type_copy_attr_function;
alias <unimplemented> MPI_Type_delete_attr_function;
alias <unimplemented> MPI_Win_copy_attr_function;
alias <unimplemented> MPI_Win_delete_attr_function;
alias <unimplemented> MPI_Comm_errhandler_function;
alias <unimplemented> MPI_File_errhandler_function;
alias <unimplemented> MPI_Win_errhandler_function;
alias <unimplemented> MPI_Comm_errhandler_fn;
alias <unimplemented> MPI_File_errhandler_fn;
alias <unimplemented> MPI_Win_errhandler_fn;
alias int MPI_Errhandler;
alias int MPI_Request;
alias int MPI_Message;
alias <unimplemented> MPI_User_function;
alias <unimplemented> MPI_Copy_function;
alias <unimplemented> MPI_Delete_function;
alias int MPI_Info;
alias c_long MPI_Aint;
alias int MPI_Fint;
alias long MPI_Count;
alias long MPI_Offset;
alias MPI_Status MPI_Status;
alias MPIR_T_enum* MPI_T_enum;
alias MPIR_T_cvar_handle* MPI_T_cvar_handle;
alias MPIR_T_pvar_handle* MPI_T_pvar_handle;
alias MPIR_T_pvar_session* MPI_T_pvar_session;
alias <unimplemented> MPI_Grequest_cancel_function;
alias <unimplemented> MPI_Grequest_free_function;
alias <unimplemented> MPI_Grequest_query_function;
alias <unimplemented> MPIX_Grequest_poll_function;
alias <unimplemented> MPIX_Grequest_wait_function;
alias <unimplemented> MPI_Datarep_conversion_function;
alias <unimplemented> MPI_Datarep_extent_function;

extern __gshared int* MPI_UNWEIGHTED;
extern __gshared int* MPI_WEIGHTS_EMPTY;
extern __gshared MPIR_T_pvar_handle* MPI_T_PVAR_ALL_HANDLES;
extern __gshared MPI_Fint* MPI_F_STATUS_IGNORE;
extern __gshared MPI_Fint* MPI_F_STATUSES_IGNORE;

/* TODO: what's this? */
// #ifndef MPI_INCLUDED
// #define MPI_INCLUDED

// /* user include file for MPI programs */

// /* Keep C++ compilers from getting confused */
// #if defined(__cplusplus)
// extern "C" {
// #endif

// #undef MPICH_DEFINE_ATTR_TYPE_TYPES
// #if defined(__has_attribute)
// #  if __has_attribute(pointer_with_type_tag) && \
//       __has_attribute(type_tag_for_datatype) && \
//       !defined(MPICH_NO_ATTR_TYPE_TAGS)
// #    define MPICH_DEFINE_ATTR_TYPE_TYPES 1
// #    define MPICH_ATTR_POINTER_WITH_TYPE_TAG(buffer_idx, type_idx)  __attribute__((pointer_with_type_tag(MPI,buffer_idx,type_idx)))
// #    define MPICH_ATTR_TYPE_TAG(type)                               __attribute__((type_tag_for_datatype(MPI,type)))
// #    define MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(type)             __attribute__((type_tag_for_datatype(MPI,type,layout_compatible)))
// #    define MPICH_ATTR_TYPE_TAG_MUST_BE_NULL()                      __attribute__((type_tag_for_datatype(MPI,void,must_be_null)))
// #    include <stddef.h>
// #  endif
// #endif

// #if !defined(MPICH_ATTR_POINTER_WITH_TYPE_TAG)
// #  define MPICH_ATTR_POINTER_WITH_TYPE_TAG(buffer_idx, type_idx)
// #  define MPICH_ATTR_TYPE_TAG(type)
// #  define MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(type)
// #  define MPICH_ATTR_TYPE_TAG_MUST_BE_NULL()
// #endif

// #if !defined(INT8_C)
// /* stdint.h was not included, see if we can get it */
// #  if defined(__cplusplus)
// #    if __cplusplus >= 201103
// #      include <cstdint>
// #    endif
// #  endif
// #endif

// #if !defined(INT8_C)
// /* stdint.h was not included, see if we can get it */
// #  if defined(__STDC_VERSION__)
// #    if __STDC_VERSION__ >= 199901
// #      include <stdint.h>
// #    endif
// #  endif
// #endif

// #if defined(INT8_C)
// /* stdint.h was included, so we can annotate these types */
// #  define MPICH_ATTR_TYPE_TAG_STDINT(type) MPICH_ATTR_TYPE_TAG(type)
// #else
// #  define MPICH_ATTR_TYPE_TAG_STDINT(type)
// #endif

// #ifdef __STDC_VERSION__ 
// #if __STDC_VERSION__ >= 199901
// #  define MPICH_ATTR_TYPE_TAG_C99(type) MPICH_ATTR_TYPE_TAG(type)
// #else
// #  define MPICH_ATTR_TYPE_TAG_C99(type)
// #endif
// #else 
// #  define MPICH_ATTR_TYPE_TAG_C99(type)
// #endif

// #if defined(__cplusplus)
// #  define MPICH_ATTR_TYPE_TAG_CXX(type) MPICH_ATTR_TYPE_TAG(type)
// #else
// #  define MPICH_ATTR_TYPE_TAG_CXX(type)
// #endif

/* Define some null objects */
const MPI_Comm MPI_COMM_NULL              = cast(MPI_Comm) 0x04000000;
const MPI_Op MPI_OP_NULL                  = cast(MPI_op) 0x18000000;
const MPI_Group MPI_GROUP_NULL            = cast(MPI_Group) 0x08000000;
const MPI_Datatype MPI_DATATYPE_NULL      = cast(MPI_Datatype) 0x0c000000;
const MPI_Request MPI_REQUEST_NULL        = cast(MPI_Request) 0x2c000000;
const MPI_Errhandler MPI_ERRHANDLER_NULL  = cast(MPI_Errhandler) 0x14000000;
const MPI_Message MPI_MESSAGE_NULL        = cast(MPI_Message) MPI_REQUEST_NULL;
const MPI_Message MPI_MESSAGE_NO_PROC     = cast(MPI_Message) 0x6c000000;

/* Results of the compare operations. */
const int MPI_IDENT     = 0;
const int MPI_CONGRUENT = 1;
const int MPI_SIMILAR   = 2;
const int MPI_UNEQUAL   = 3;

alias int MPI_Datatype;
const MPI_Datatype MPI_CHAR               = cast(MPI_Datatype) 0x4c000101;
const MPI_Datatype MPI_SIGNED_CHAR        = cast(MPI_Datatype) 0x4c000118;
const MPI_Datatype MPI_UNSIGNED_CHAR      = cast(MPI_Datatype) 0x4c000102;
const MPI_Datatype MPI_BYTE               = cast(MPI_Datatype) 0x4c00010d;
const MPI_Datatype MPI_WCHAR              = cast(MPI_Datatype) 0x4c00040e;
const MPI_Datatype MPI_SHORT              = cast(MPI_Datatype) 0x4c000203;
const MPI_Datatype MPI_UNSIGNED_SHORT     = cast(MPI_Datatype) 0x4c000204;
const MPI_Datatype MPI_INT                = cast(MPI_Datatype) 0x4c000405;
const MPI_Datatype MPI_UNSIGNED           = cast(MPI_Datatype) 0x4c000406;
const MPI_Datatype MPI_LONG               = cast(MPI_Datatype) 0x4c000807;
const MPI_Datatype MPI_UNSIGNED_LONG      = cast(MPI_Datatype) 0x4c000808;
const MPI_Datatype MPI_FLOAT              = cast(MPI_Datatype) 0x4c00040a;
const MPI_Datatype MPI_DOUBLE             = cast(MPI_Datatype) 0x4c00080b;
const MPI_Datatype MPI_LONG_DOUBLE        = cast(MPI_Datatype) 0x4c00100c;
const MPI_Datatype MPI_LONG_LONG_INT      = cast(MPI_Datatype) 0x4c000809;
const MPI_Datatype MPI_UNSIGNED_LONG_LONG = cast(MPI_Datatype) 0x4c000819;
const MPI_Datatype MPI_LONG_LONG          = MPI_LONG_LONG_INT;

/* TODO: what's this? */
// #ifdef MPICH_DEFINE_ATTR_TYPE_TYPES
// static const MPI_Datatype mpich_mpi_char               MPICH_ATTR_TYPE_TAG(char)               = MPI_CHAR;
// static const MPI_Datatype mpich_mpi_signed_char        MPICH_ATTR_TYPE_TAG(signed char)        = MPI_SIGNED_CHAR;
// static const MPI_Datatype mpich_mpi_unsigned_char      MPICH_ATTR_TYPE_TAG(unsigned char)      = MPI_UNSIGNED_CHAR;
// /*static const MPI_Datatype mpich_mpi_byte               MPICH_ATTR_TYPE_TAG(char)               = MPI_BYTE;*/
// static const MPI_Datatype mpich_mpi_wchar              MPICH_ATTR_TYPE_TAG(wchar_t)            = MPI_WCHAR;
// static const MPI_Datatype mpich_mpi_short              MPICH_ATTR_TYPE_TAG(short)              = MPI_SHORT;
// static const MPI_Datatype mpich_mpi_unsigned_short     MPICH_ATTR_TYPE_TAG(unsigned short)     = MPI_UNSIGNED_SHORT;
// static const MPI_Datatype mpich_mpi_int                MPICH_ATTR_TYPE_TAG(int)                = MPI_INT;
// static const MPI_Datatype mpich_mpi_unsigned           MPICH_ATTR_TYPE_TAG(unsigned)           = MPI_UNSIGNED;
// static const MPI_Datatype mpich_mpi_long               MPICH_ATTR_TYPE_TAG(long)               = MPI_LONG;
// static const MPI_Datatype mpich_mpi_unsigned_long      MPICH_ATTR_TYPE_TAG(unsigned long)      = MPI_UNSIGNED_LONG;
// static const MPI_Datatype mpich_mpi_float              MPICH_ATTR_TYPE_TAG(float)              = MPI_FLOAT;
// static const MPI_Datatype mpich_mpi_double             MPICH_ATTR_TYPE_TAG(double)             = MPI_DOUBLE;
// #if 0x4c00100c != 0x0c000000
// static const MPI_Datatype mpich_mpi_long_double        MPICH_ATTR_TYPE_TAG(long double)        = MPI_LONG_DOUBLE;
// #endif
// static const MPI_Datatype mpich_mpi_long_long_int      MPICH_ATTR_TYPE_TAG(long long int)      = MPI_LONG_LONG_INT;
// static const MPI_Datatype mpich_mpi_unsigned_long_long MPICH_ATTR_TYPE_TAG(unsigned long long) = MPI_UNSIGNED_LONG_LONG;
// #endif

const MPI_Datatype MPI_PACKED             = cast(MPI_Datatype) 0x4c00010f;
const MPI_Datatype MPI_LB                 = cast(MPI_Datatype) 0x4c000010;
const MPI_Datatype MPI_UB                 = cast(MPI_Datatype) 0x4c000011;

/* 
   The layouts for the types MPI_DOUBLE_INT etc are simply
   struct { 
       double var;
       int    loc;
   }
   This is documented in the man pages on the various datatypes.   
 */
const MPI_Datatype MPI_FLOAT_INT          = cast(MPI_Datatype) 0x8c000000;
const MPI_Datatype MPI_DOUBLE_INT         = cast(MPI_Datatype) 0x8c000001;
const MPI_Datatype MPI_LONG_INT           = cast(MPI_Datatype) 0x8c000002;
const MPI_Datatype MPI_SHORT_INT          = cast(MPI_Datatype) 0x8c000003;
const MPI_Datatype MPI_2INT               = cast(MPI_Datatype) 0x4c000816;
const MPI_Datatype MPI_LONG_DOUBLE_INT    = cast(MPI_Datatype) 0x8c000004;

/* TODO: what's this? */
// #ifdef MPICH_DEFINE_ATTR_TYPE_TYPES
// struct mpich_struct_mpi_float_int       { float f; int i; };
// struct mpich_struct_mpi_double_int      { double d; int i; };
// struct mpich_struct_mpi_long_int        { long l; int i; };
// struct mpich_struct_mpi_short_int       { short s; int i; };
// struct mpich_struct_mpi_2int            { int i1; int i2; };
// #if 0x8c000004 != 0x0c000000
// struct mpich_struct_mpi_long_double_int { long double ld; int i; };
// #endif

// static const MPI_Datatype mpich_mpi_float_int       MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(struct mpich_struct_mpi_float_int)       = MPI_FLOAT_INT;
// static const MPI_Datatype mpich_mpi_double_int      MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(struct mpich_struct_mpi_double_int)      = MPI_DOUBLE_INT;
// static const MPI_Datatype mpich_mpi_long_int        MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(struct mpich_struct_mpi_long_int)        = MPI_LONG_INT;
// static const MPI_Datatype mpich_mpi_short_int       MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(struct mpich_struct_mpi_short_int)       = MPI_SHORT_INT;
// static const MPI_Datatype mpich_mpi_2int            MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(struct mpich_struct_mpi_2int)            = MPI_2INT;
// #if 0x8c000004 != 0x0c000000
// static const MPI_Datatype mpich_mpi_long_double_int MPICH_ATTR_TYPE_TAG_LAYOUT_COMPATIBLE(struct mpich_struct_mpi_long_double_int) = MPI_LONG_DOUBLE_INT;
// #endif
// #endif

/* Fortran types */
const MPI_Datatype MPI_COMPLEX           = cast(MPI_Datatype) 1275070494;
const MPI_Datatype MPI_DOUBLE_COMPLEX    = cast(MPI_Datatype) 1275072546;
const MPI_Datatype MPI_LOGICAL           = cast(MPI_Datatype) 1275069469;
const MPI_Datatype MPI_REAL              = cast(MPI_Datatype) 1275069468;
const MPI_Datatype MPI_DOUBLE_PRECISION  = cast(MPI_Datatype) 1275070495;
const MPI_Datatype MPI_INTEGER           = cast(MPI_Datatype) 1275069467;
const MPI_Datatype MPI_2INTEGER          = cast(MPI_Datatype) 1275070496;

/* 
 * MPI_2COMPLEX and MPI_2DOUBLE_COMPLEX were defined by accident in 
 * MPI 1.0 and removed in MPI 1.1.  
 *
 * This definition provides backward compatibility.  These definitions
 * will be removed in a subsequent MPICH release
 */
const MPI_Datatype MPI_2COMPLEX          = cast(MPI_Datatype) 1275072548;
const MPI_Datatype MPI_2DOUBLE_COMPLEX   = cast(MPI_Datatype) 1275076645;
const MPI_Datatype MPI_2REAL             = cast(MPI_Datatype) 1275070497;
const MPI_Datatype MPI_2DOUBLE_PRECISION = cast(MPI_Datatype) 1275072547;
const MPI_Datatype MPI_CHARACTER         = cast(MPI_Datatype) 1275068698;

/* Size-specific types (see MPI-2, 10.2.5) */
const MPI_Datatype MPI_REAL4             = cast(MPI_Datatype) 0x4c000427;
const MPI_Datatype MPI_REAL8             = cast(MPI_Datatype) 0x4c000829;
const MPI_Datatype MPI_REAL16            = cast(MPI_Datatype) 0x4c00102b;
const MPI_Datatype MPI_COMPLEX8          = cast(MPI_Datatype) 0x4c000828;
const MPI_Datatype MPI_COMPLEX16         = cast(MPI_Datatype) 0x4c00102a;
const MPI_Datatype MPI_COMPLEX32         = cast(MPI_Datatype) 0x4c00202c;
const MPI_Datatype MPI_INTEGER1          = cast(MPI_Datatype) 0x4c00012d;
const MPI_Datatype MPI_INTEGER2          = cast(MPI_Datatype) 0x4c00022f;
const MPI_Datatype MPI_INTEGER4          = cast(MPI_Datatype) 0x4c000430;
const MPI_Datatype MPI_INTEGER8          = cast(MPI_Datatype) 0x4c000831;
const MPI_Datatype MPI_INTEGER16         = cast(MPI_Datatype) MPI_DATATYPE_NULL;

/* C99 fixed-width datatypes */
const MPI_Datatype MPI_INT8_T            = cast(MPI_Datatype) 0x4c000137;
const MPI_Datatype MPI_INT16_T           = cast(MPI_Datatype) 0x4c000238;
const MPI_Datatype MPI_INT32_T           = cast(MPI_Datatype) 0x4c000439;
const MPI_Datatype MPI_INT64_T           = cast(MPI_Datatype) 0x4c00083a;
const MPI_Datatype MPI_UINT8_T           = cast(MPI_Datatype) 0x4c00013b;
const MPI_Datatype MPI_UINT16_T          = cast(MPI_Datatype) 0x4c00023c;
const MPI_Datatype MPI_UINT32_T          = cast(MPI_Datatype) 0x4c00043d;
const MPI_Datatype MPI_UINT64_T          = cast(MPI_Datatype) 0x4c00083e;

/* TODO: what's this? */
// #ifdef MPICH_DEFINE_ATTR_TYPE_TYPES
// static const MPI_Datatype mpich_mpi_int8_t   MPICH_ATTR_TYPE_TAG_STDINT(int8_t)   = MPI_INT8_T;
// static const MPI_Datatype mpich_mpi_int16_t  MPICH_ATTR_TYPE_TAG_STDINT(int16_t)  = MPI_INT16_T;
// static const MPI_Datatype mpich_mpi_int32_t  MPICH_ATTR_TYPE_TAG_STDINT(int32_t)  = MPI_INT32_T;
// static const MPI_Datatype mpich_mpi_int64_t  MPICH_ATTR_TYPE_TAG_STDINT(int64_t)  = MPI_INT64_T;
// static const MPI_Datatype mpich_mpi_uint8_t  MPICH_ATTR_TYPE_TAG_STDINT(uint8_t)  = MPI_UINT8_T;
// static const MPI_Datatype mpich_mpi_uint16_t MPICH_ATTR_TYPE_TAG_STDINT(uint16_t) = MPI_UINT16_T;
// static const MPI_Datatype mpich_mpi_uint32_t MPICH_ATTR_TYPE_TAG_STDINT(uint32_t) = MPI_UINT32_T;
// static const MPI_Datatype mpich_mpi_uint64_t MPICH_ATTR_TYPE_TAG_STDINT(uint64_t) = MPI_UINT64_T;
// #endif

/* other C99 types */
const MPI_Datatype MPI_C_BOOL           = cast(MPI_Datatype) 0x4c00013f;
const MPI_Datatype MPI_C_FLOAT_COMPLEX  = cast(MPI_Datatype) 0x4c000840;
const MPI_Datatype MPI_C_COMPLEX        = MPI_C_FLOAT_COMPLEX;
const MPI_Datatype MPI_C_DOUBLE_COMPLEX = cast(MPI_Datatype) 0x4c001041;
const MPI_Datatype MPI_C_LONG_DOUBLE_COMPLEX = cast(MPI_Datatype) 0x4c002042;

/* TODO: what's this? */
// #ifdef MPICH_DEFINE_ATTR_TYPE_TYPES
// static const MPI_Datatype mpich_mpi_c_bool                MPICH_ATTR_TYPE_TAG_C99(_Bool)           = MPI_C_BOOL;
// static const MPI_Datatype mpich_mpi_c_float_complex       MPICH_ATTR_TYPE_TAG_C99(float _Complex)  = MPI_C_FLOAT_COMPLEX;
// static const MPI_Datatype mpich_mpi_c_double_complex      MPICH_ATTR_TYPE_TAG_C99(double _Complex) = MPI_C_DOUBLE_COMPLEX;
// #if 0x4c002042 != 0x0c000000
// static const MPI_Datatype mpich_mpi_c_long_double_complex MPICH_ATTR_TYPE_TAG_C99(long double _Complex) = MPI_C_LONG_DOUBLE_COMPLEX;
// #endif
// #endif

/* address/offset types */
const MPI_Datatype MPI_AINT             = cast(MPI_Datatype) 0x4c000843;
const MPI_Datatype MPI_OFFSET           = cast(MPI_Datatype) 0x4c000844;
const MPI_Datatype MPI_COUNT            = cast(MPI_Datatype) 0x4c000845;

/* MPI-3 C++ types */
const MPI_Datatype MPI_CXX_BOOL                = cast(MPI_Datatype) 0x4c000133;
const MPI_Datatype MPI_CXX_FLOAT_COMPLEX       = cast(MPI_Datatype) 0x4c000834;
const MPI_Datatype MPI_CXX_DOUBLE_COMPLEX      = cast(MPI_Datatype) 0x4c001035;
const MPI_Datatype MPI_CXX_LONG_DOUBLE_COMPLEX = cast(MPI_Datatype) 0x4c002036;

/* typeclasses */
const int MPI_TYPECLASS_REAL    = 1;
const int MPI_TYPECLASS_INTEGER = 2;
const int MPI_TYPECLASS_COMPLEX = 3;

/* Communicators */
alias int MPI_Comm;
const MPI_Comm MPI_COMM_WORLD = cast(MPI_Comm) 0x44000000;
const MPI_Comm MPI_COMM_SELF  = cast(MPI_Comm) 0x44000001;

/* Groups */
alias int MPI_Group;
const MPI_Group MPI_GROUP_EMPTY = cast(MPI_Group) 0x48000000;

/* RMA and Windows */
alias int MPI_Win;
const MPI_Win MPI_WIN_NULL      = cast(MPI_Win) 0x20000000;

enum MPIR_Win_flavor
{
	MPI_WIN_FLAVOR_CREATE = 1,
	MPI_WIN_FLAVOR_ALLOCATE = 2,
	MPI_WIN_FLAVOR_DYNAMIC = 3,
	MPI_WIN_FLAVOR_SHARED = 4
}

enum MPIR_Win_model
{
	MPI_WIN_SEPARATE = 1,
	MPI_WIN_UNIFIED = 2
}

enum MPIR_Topo_type
{
	MPI_GRAPH = 1,
	MPI_CART = 2,
	MPI_DIST_GRAPH = 3
}

enum MPIR_Combiner_enum
{
	MPI_COMBINER_NAMED = 1,
	MPI_COMBINER_DUP = 2,
	MPI_COMBINER_CONTIGUOUS = 3,
	MPI_COMBINER_VECTOR = 4,
	MPI_COMBINER_HVECTOR_INTEGER = 5,
	MPI_COMBINER_HVECTOR = 6,
	MPI_COMBINER_INDEXED = 7,
	MPI_COMBINER_HINDEXED_INTEGER = 8,
	MPI_COMBINER_HINDEXED = 9,
	MPI_COMBINER_INDEXED_BLOCK = 10,
	MPI_COMBINER_HINDEXED_BLOCK = 11,
	MPI_COMBINER_STRUCT_INTEGER = 12,
	MPI_COMBINER_STRUCT = 13,
	MPI_COMBINER_SUBARRAY = 14,
	MPI_COMBINER_DARRAY = 15,
	MPI_COMBINER_F90_REAL = 16,
	MPI_COMBINER_F90_COMPLEX = 17,
	MPI_COMBINER_F90_INTEGER = 18,
	MPI_COMBINER_RESIZED = 19
}

enum MPIR_T_verbosity_t
{
	MPIX_T_VERBOSITY_INVALID = 0,
	MPI_T_VERBOSITY_USER_BASIC = 221,
	MPI_T_VERBOSITY_USER_DETAIL = 222,
	MPI_T_VERBOSITY_USER_ALL = 223,
	MPI_T_VERBOSITY_TUNER_BASIC = 224,
	MPI_T_VERBOSITY_TUNER_DETAIL = 225,
	MPI_T_VERBOSITY_TUNER_ALL = 226,
	MPI_T_VERBOSITY_MPIDEV_BASIC = 227,
	MPI_T_VERBOSITY_MPIDEV_DETAIL = 228,
	MPI_T_VERBOSITY_MPIDEV_ALL = 229
}

enum MPIR_T_bind_t
{
	MPIX_T_BIND_INVALID = 0,
	MPI_T_BIND_NO_OBJECT = 9700,
	MPI_T_BIND_MPI_COMM = 9701,
	MPI_T_BIND_MPI_DATATYPE = 9702,
	MPI_T_BIND_MPI_ERRHANDLER = 9703,
	MPI_T_BIND_MPI_FILE = 9704,
	MPI_T_BIND_MPI_GROUP = 9705,
	MPI_T_BIND_MPI_OP = 9706,
	MPI_T_BIND_MPI_REQUEST = 9707,
	MPI_T_BIND_MPI_WIN = 9708,
	MPI_T_BIND_MPI_MESSAGE = 9709,
	MPI_T_BIND_MPI_INFO = 9710
}

enum MPIR_T_scope_t
{
	MPIX_T_SCOPE_INVALID = 0,
	MPI_T_SCOPE_READONLY = 60439,
	MPI_T_SCOPE_LOCAL = 60440,
	MPI_T_SCOPE_GROUP = 60441,
	MPI_T_SCOPE_GROUP_EQ = 60442,
	MPI_T_SCOPE_ALL = 60443,
	MPI_T_SCOPE_ALL_EQ = 60444
}

enum MPIR_T_pvar_class_t
{
	MPIX_T_PVAR_CLASS_INVALID = 0,
	MPI_T_PVAR_CLASS_STATE = 240,
	MPI_T_PVAR_CLASS_LEVEL = 241,
	MPI_T_PVAR_CLASS_SIZE = 242,
	MPI_T_PVAR_CLASS_PERCENTAGE = 243,
	MPI_T_PVAR_CLASS_HIGHWATERMARK = 244,
	MPI_T_PVAR_CLASS_LOWWATERMARK = 245,
	MPI_T_PVAR_CLASS_COUNTER = 246,
	MPI_T_PVAR_CLASS_AGGREGATE = 247,
	MPI_T_PVAR_CLASS_TIMER = 248,
	MPI_T_PVAR_CLASS_GENERIC = 249
}

struct MPI_Status
{
	int MPI_SOURCE;
	int MPI_TAG;
	int MPI_ERROR;
	MPI_Count count;
	int cancelled;
	int[2] abi_slush_fund;
}

struct MPIR_T_pvar_session;


struct ADIOI_FileD;


struct MPIR_T_cvar_handle;


struct MPIR_T_pvar_handle;


struct MPIR_T_enum;

/* 
   For systems that may need to add additional definitions to support
   different declaration styles and options (e.g., different calling 
   conventions or DLL import/export controls).  
*/
/* --Insert Additional Definitions Here-- */

/*
 * Normally, we provide prototypes for all MPI routines.  In a few weird
 * cases, we need to suppress the prototypes.
 */

/* We require that the C compiler support prototypes */
/* Begin Prototypes */
int MPI_Send (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int MPI_Recv (void* buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Status* status);
int MPI_Get_count (const(MPI_Status)* status, MPI_Datatype datatype, int* count);
int MPI_Bsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int MPI_Ssend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int MPI_Rsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int MPI_Buffer_attach (void* buffer, int size);
int MPI_Buffer_detach (void* buffer_addr, int* size);
int MPI_Isend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Ibsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Issend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Irsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Irecv (void* buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Wait (MPI_Request* request, MPI_Status* status);
int MPI_Test (MPI_Request* request, int* flag, MPI_Status* status);
int MPI_Request_free (MPI_Request* request);
int MPI_Waitany (int count, MPI_Request* array_of_requests, int* indx, MPI_Status* status);
int MPI_Testany (int count, MPI_Request* array_of_requests, int* indx, int* flag, MPI_Status* status);
int MPI_Waitall (int count, MPI_Request* array_of_requests, MPI_Status* array_of_statuses);
int MPI_Testall (int count, MPI_Request* array_of_requests, int* flag, MPI_Status* array_of_statuses);
int MPI_Waitsome (int incount, MPI_Request* array_of_requests, int* outcount, int* array_of_indices, MPI_Status* array_of_statuses);
int MPI_Testsome (int incount, MPI_Request* array_of_requests, int* outcount, int* array_of_indices, MPI_Status* array_of_statuses);
int MPI_Iprobe (int source, int tag, MPI_Comm comm, int* flag, MPI_Status* status);
int MPI_Probe (int source, int tag, MPI_Comm comm, MPI_Status* status);
int MPI_Cancel (MPI_Request* request);
int MPI_Test_cancelled (const(MPI_Status)* status, int* flag);
int MPI_Send_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Bsend_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Ssend_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Rsend_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Recv_init (void* buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request* request);
int MPI_Start (MPI_Request* request);
int MPI_Startall (int count, MPI_Request* array_of_requests);
int MPI_Sendrecv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, int dest, int sendtag, void* recvbuf, int recvcount, MPI_Datatype recvtype, int source, int recvtag, MPI_Comm comm, MPI_Status* status);
int MPI_Sendrecv_replace (void* buf, int count, MPI_Datatype datatype, int dest, int sendtag, int source, int recvtag, MPI_Comm comm, MPI_Status* status);
int MPI_Type_contiguous (int count, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_vector (int count, int blocklength, int stride, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_hvector (int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_indexed (int count, const(int)* array_of_blocklengths, const(int)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_hindexed (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_struct (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, const(MPI_Datatype)* array_of_types, MPI_Datatype* newtype);
int MPI_Address (const(void)* location, MPI_Aint* address);
int MPI_Type_extent (MPI_Datatype datatype, MPI_Aint* extent);
int MPI_Type_size (MPI_Datatype datatype, int* size);
int MPI_Type_lb (MPI_Datatype datatype, MPI_Aint* displacement);
int MPI_Type_ub (MPI_Datatype datatype, MPI_Aint* displacement);
int MPI_Type_commit (MPI_Datatype* datatype);
int MPI_Type_free (MPI_Datatype* datatype);
int MPI_Get_elements (const(MPI_Status)* status, MPI_Datatype datatype, int* count);
int MPI_Pack (const(void)* inbuf, int incount, MPI_Datatype datatype, void* outbuf, int outsize, int* position, MPI_Comm comm);
int MPI_Unpack (const(void)* inbuf, int insize, int* position, void* outbuf, int outcount, MPI_Datatype datatype, MPI_Comm comm);
int MPI_Pack_size (int incount, MPI_Datatype datatype, MPI_Comm comm, int* size);
int MPI_Barrier (MPI_Comm comm);
int MPI_Bcast (void* buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm);
int MPI_Gather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm);
int MPI_Gatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, int root, MPI_Comm comm);
int MPI_Scatter (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm);
int MPI_Scatterv (const(void)* sendbuf, const(int)* sendcounts, const(int)* displs, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm);
int MPI_Allgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Allgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Alltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Alltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Alltoallw (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm);
int MPI_Exscan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int MPI_Reduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm);
int MPI_Op_create (void function (void*, void*, int*, MPI_Datatype*) user_fn, int commute, MPI_Op* op);
int MPI_Op_free (MPI_Op* op);
int MPI_Allreduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int MPI_Reduce_scatter (const(void)* sendbuf, void* recvbuf, const(int)* recvcounts, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int MPI_Scan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int MPI_Group_size (MPI_Group group, int* size);
int MPI_Group_rank (MPI_Group group, int* rank);
int MPI_Group_translate_ranks (MPI_Group group1, int n, const(int)* ranks1, MPI_Group group2, int* ranks2);
int MPI_Group_compare (MPI_Group group1, MPI_Group group2, int* result);
int MPI_Comm_group (MPI_Comm comm, MPI_Group* group);
int MPI_Group_union (MPI_Group group1, MPI_Group group2, MPI_Group* newgroup);
int MPI_Group_intersection (MPI_Group group1, MPI_Group group2, MPI_Group* newgroup);
int MPI_Group_difference (MPI_Group group1, MPI_Group group2, MPI_Group* newgroup);
int MPI_Group_incl (MPI_Group group, int n, const(int)* ranks, MPI_Group* newgroup);
int MPI_Group_excl (MPI_Group group, int n, const(int)* ranks, MPI_Group* newgroup);
int MPI_Group_range_incl (MPI_Group group, int n, int[3]* ranges, MPI_Group* newgroup);
int MPI_Group_range_excl (MPI_Group group, int n, int[3]* ranges, MPI_Group* newgroup);
int MPI_Group_free (MPI_Group* group);
int MPI_Comm_size (MPI_Comm comm, int* size);
int MPI_Comm_rank (MPI_Comm comm, int* rank);
int MPI_Comm_compare (MPI_Comm comm1, MPI_Comm comm2, int* result);
int MPI_Comm_dup (MPI_Comm comm, MPI_Comm* newcomm);
int MPI_Comm_dup_with_info (MPI_Comm comm, MPI_Info info, MPI_Comm* newcomm);
int MPI_Comm_create (MPI_Comm comm, MPI_Group group, MPI_Comm* newcomm);
int MPI_Comm_split (MPI_Comm comm, int color, int key, MPI_Comm* newcomm);
int MPI_Comm_free (MPI_Comm* comm);
int MPI_Comm_test_inter (MPI_Comm comm, int* flag);
int MPI_Comm_remote_size (MPI_Comm comm, int* size);
int MPI_Comm_remote_group (MPI_Comm comm, MPI_Group* group);
int MPI_Intercomm_create (MPI_Comm local_comm, int local_leader, MPI_Comm peer_comm, int remote_leader, int tag, MPI_Comm* newintercomm);
int MPI_Intercomm_merge (MPI_Comm intercomm, int high, MPI_Comm* newintracomm);
int MPI_Keyval_create (int function (MPI_Comm, int, void*, void*, void*, int*) copy_fn, int function (MPI_Comm, int, void*, void*) delete_fn, int* keyval, void* extra_state);
int MPI_Keyval_free (int* keyval);
int MPI_Attr_put (MPI_Comm comm, int keyval, void* attribute_val);
int MPI_Attr_get (MPI_Comm comm, int keyval, void* attribute_val, int* flag);
int MPI_Attr_delete (MPI_Comm comm, int keyval);
int MPI_Topo_test (MPI_Comm comm, int* status);
int MPI_Cart_create (MPI_Comm comm_old, int ndims, const(int)* dims, const(int)* periods, int reorder, MPI_Comm* comm_cart);
int MPI_Dims_create (int nnodes, int ndims, int* dims);
int MPI_Graph_create (MPI_Comm comm_old, int nnodes, const(int)* indx, const(int)* edges, int reorder, MPI_Comm* comm_graph);
int MPI_Graphdims_get (MPI_Comm comm, int* nnodes, int* nedges);
int MPI_Graph_get (MPI_Comm comm, int maxindex, int maxedges, int* indx, int* edges);
int MPI_Cartdim_get (MPI_Comm comm, int* ndims);
int MPI_Cart_get (MPI_Comm comm, int maxdims, int* dims, int* periods, int* coords);
int MPI_Cart_rank (MPI_Comm comm, const(int)* coords, int* rank);
int MPI_Cart_coords (MPI_Comm comm, int rank, int maxdims, int* coords);
int MPI_Graph_neighbors_count (MPI_Comm comm, int rank, int* nneighbors);
int MPI_Graph_neighbors (MPI_Comm comm, int rank, int maxneighbors, int* neighbors);
int MPI_Cart_shift (MPI_Comm comm, int direction, int disp, int* rank_source, int* rank_dest);
int MPI_Cart_sub (MPI_Comm comm, const(int)* remain_dims, MPI_Comm* newcomm);
int MPI_Cart_map (MPI_Comm comm, int ndims, const(int)* dims, const(int)* periods, int* newrank);
int MPI_Graph_map (MPI_Comm comm, int nnodes, const(int)* indx, const(int)* edges, int* newrank);
int MPI_Get_processor_name (char* name, int* resultlen);
int MPI_Get_version (int* version_, int* subversion);
int MPI_Get_library_version (char* version_, int* resultlen);
int MPI_Errhandler_create (void function (MPI_Comm*, int*, ...) function_, MPI_Errhandler* errhandler);
int MPI_Errhandler_set (MPI_Comm comm, MPI_Errhandler errhandler);
int MPI_Errhandler_get (MPI_Comm comm, MPI_Errhandler* errhandler);
int MPI_Errhandler_free (MPI_Errhandler* errhandler);
int MPI_Error_string (int errorcode, char* string, int* resultlen);
int MPI_Error_class (int errorcode, int* errorclass);
double MPI_Wtime ();
double MPI_Wtick ();
int MPI_Init (int* argc, char*** argv);
int MPI_Finalize ();
int MPI_Initialized (int* flag);
int MPI_Abort (MPI_Comm comm, int errorcode);

/* Note that we may need to define a @PCONTROL_LIST@ depending on whether
   stdargs are supported */
int MPI_Pcontrol (const int level, ...);
int MPIR_Dup_fn (MPI_Comm oldcomm, int keyval, void* extra_state, void* attribute_val_in, void* attribute_val_out, int* flag);

/* Process Creation and Management */
int MPI_Close_port (const(char)* port_name);
int MPI_Comm_accept (const(char)* port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm* newcomm);
int MPI_Comm_connect (const(char)* port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm* newcomm);
int MPI_Comm_disconnect (MPI_Comm* comm);
int MPI_Comm_get_parent (MPI_Comm* parent);
int MPI_Comm_join (int fd, MPI_Comm* intercomm);
int MPI_Comm_spawn (const(char)* command, char** argv, int maxprocs, MPI_Info info, int root, MPI_Comm comm, MPI_Comm* intercomm, int* array_of_errcodes);
int MPI_Comm_spawn_multiple (int count, char** array_of_commands, char*** array_of_argv, const(int)* array_of_maxprocs, const(MPI_Info)* array_of_info, int root, MPI_Comm comm, MPI_Comm* intercomm, int* array_of_errcodes);
int MPI_Lookup_name (const(char)* service_name, MPI_Info info, char* port_name);
int MPI_Open_port (MPI_Info info, char* port_name);
int MPI_Publish_name (const(char)* service_name, MPI_Info info, const(char)* port_name);
int MPI_Unpublish_name (const(char)* service_name, MPI_Info info, const(char)* port_name);
int MPI_Comm_set_info (MPI_Comm comm, MPI_Info info);
int MPI_Comm_get_info (MPI_Comm comm, MPI_Info* info);

/* One-Sided Communications */
int MPI_Accumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win);
int MPI_Get (void* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win);
int MPI_Put (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win);
int MPI_Win_complete (MPI_Win win);
int MPI_Win_create (void* base, MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, MPI_Win* win);
int MPI_Win_fence (int assert_, MPI_Win win);
int MPI_Win_free (MPI_Win* win);
int MPI_Win_get_group (MPI_Win win, MPI_Group* group);
int MPI_Win_lock (int lock_type, int rank, int assert_, MPI_Win win);
int MPI_Win_post (MPI_Group group, int assert_, MPI_Win win);
int MPI_Win_start (MPI_Group group, int assert_, MPI_Win win);
int MPI_Win_test (MPI_Win win, int* flag);
int MPI_Win_unlock (int rank, MPI_Win win);
int MPI_Win_wait (MPI_Win win);

/* MPI-3 One-Sided Communication Routines */
int MPI_Win_allocate (MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void* baseptr, MPI_Win* win);
int MPI_Win_allocate_shared (MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void* baseptr, MPI_Win* win);
int MPI_Win_shared_query (MPI_Win win, int rank, MPI_Aint* size, int* disp_unit, void* baseptr);
int MPI_Win_create_dynamic (MPI_Info info, MPI_Comm comm, MPI_Win* win);
int MPI_Win_attach (MPI_Win win, void* base, MPI_Aint size);
int MPI_Win_detach (MPI_Win win, const(void)* base);
int MPI_Win_get_info (MPI_Win win, MPI_Info* info_used);
int MPI_Win_set_info (MPI_Win win, MPI_Info info);
int MPI_Get_accumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, void* result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win);
int MPI_Fetch_and_op (const(void)* origin_addr, void* result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Op op, MPI_Win win);
int MPI_Compare_and_swap (const(void)* origin_addr, const(void)* compare_addr, void* result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Win win);
int MPI_Rput (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win, MPI_Request* request);
int MPI_Rget (void* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win, MPI_Request* request);
int MPI_Raccumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request* request);
int MPI_Rget_accumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, void* result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request* request);
int MPI_Win_lock_all (int assert_, MPI_Win win);
int MPI_Win_unlock_all (MPI_Win win);
int MPI_Win_flush (int rank, MPI_Win win);
int MPI_Win_flush_all (MPI_Win win);
int MPI_Win_flush_local (int rank, MPI_Win win);
int MPI_Win_flush_local_all (MPI_Win win);
int MPI_Win_sync (MPI_Win win);

/* External Interfaces */
int MPI_Add_error_class (int* errorclass);
int MPI_Add_error_code (int errorclass, int* errorcode);
int MPI_Add_error_string (int errorcode, const(char)* string);
int MPI_Comm_call_errhandler (MPI_Comm comm, int errorcode);
int MPI_Comm_create_keyval (int function (MPI_Comm, int, void*, void*, void*, int*) comm_copy_attr_fn, int function (MPI_Comm, int, void*, void*) comm_delete_attr_fn, int* comm_keyval, void* extra_state);
int MPI_Comm_delete_attr (MPI_Comm comm, int comm_keyval);
int MPI_Comm_free_keyval (int* comm_keyval);
int MPI_Comm_get_attr (MPI_Comm comm, int comm_keyval, void* attribute_val, int* flag);
int MPI_Comm_get_name (MPI_Comm comm, char* comm_name, int* resultlen);
int MPI_Comm_set_attr (MPI_Comm comm, int comm_keyval, void* attribute_val);
int MPI_Comm_set_name (MPI_Comm comm, const(char)* comm_name);
int MPI_File_call_errhandler (MPI_File fh, int errorcode);
int MPI_Grequest_complete (MPI_Request request);
int MPI_Grequest_start (int function (void*, MPI_Status*) query_fn, int function (void*) free_fn, int function (void*, int) cancel_fn, void* extra_state, MPI_Request* request);
int MPI_Init_thread (int* argc, char*** argv, int required, int* provided);
int MPI_Is_thread_main (int* flag);
int MPI_Query_thread (int* provided);
int MPI_Status_set_cancelled (MPI_Status* status, int flag);
int MPI_Status_set_elements (MPI_Status* status, MPI_Datatype datatype, int count);
int MPI_Type_create_keyval (int function (MPI_Datatype, int, void*, void*, void*, int*) type_copy_attr_fn, int function (MPI_Datatype, int, void*, void*) type_delete_attr_fn, int* type_keyval, void* extra_state);
int MPI_Type_delete_attr (MPI_Datatype datatype, int type_keyval);
int MPI_Type_dup (MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_free_keyval (int* type_keyval);
int MPI_Type_get_attr (MPI_Datatype datatype, int type_keyval, void* attribute_val, int* flag);
int MPI_Type_get_contents (MPI_Datatype datatype, int max_integers, int max_addresses, int max_datatypes, int* array_of_integers, MPI_Aint* array_of_addresses, MPI_Datatype* array_of_datatypes);
int MPI_Type_get_envelope (MPI_Datatype datatype, int* num_integers, int* num_addresses, int* num_datatypes, int* combiner);
int MPI_Type_get_name (MPI_Datatype datatype, char* type_name, int* resultlen);
int MPI_Type_set_attr (MPI_Datatype datatype, int type_keyval, void* attribute_val);
int MPI_Type_set_name (MPI_Datatype datatype, const(char)* type_name);
int MPI_Type_match_size (int typeclass, int size, MPI_Datatype* datatype);
int MPI_Win_call_errhandler (MPI_Win win, int errorcode);
int MPI_Win_create_keyval (int function (MPI_Win, int, void*, void*, void*, int*) win_copy_attr_fn, int function (MPI_Win, int, void*, void*) win_delete_attr_fn, int* win_keyval, void* extra_state);
int MPI_Win_delete_attr (MPI_Win win, int win_keyval);
int MPI_Win_free_keyval (int* win_keyval);
int MPI_Win_get_attr (MPI_Win win, int win_keyval, void* attribute_val, int* flag);
int MPI_Win_get_name (MPI_Win win, char* win_name, int* resultlen);
int MPI_Win_set_attr (MPI_Win win, int win_keyval, void* attribute_val);
int MPI_Win_set_name (MPI_Win win, const(char)* win_name);
int MPI_Alloc_mem (MPI_Aint size, MPI_Info info, void* baseptr);
int MPI_Comm_create_errhandler (void function (MPI_Comm*, int*, ...) comm_errhandler_fn, MPI_Errhandler* errhandler);
int MPI_Comm_get_errhandler (MPI_Comm comm, MPI_Errhandler* errhandler);
int MPI_Comm_set_errhandler (MPI_Comm comm, MPI_Errhandler errhandler);
int MPI_File_create_errhandler (void function (MPI_File*, int*, ...) file_errhandler_fn, MPI_Errhandler* errhandler);
int MPI_File_get_errhandler (MPI_File file, MPI_Errhandler* errhandler);
int MPI_File_set_errhandler (MPI_File file, MPI_Errhandler errhandler);
int MPI_Finalized (int* flag);
int MPI_Free_mem (void* base);
int MPI_Get_address (const(void)* location, MPI_Aint* address);
int MPI_Info_create (MPI_Info* info);
int MPI_Info_delete (MPI_Info info, const(char)* key);
int MPI_Info_dup (MPI_Info info, MPI_Info* newinfo);
int MPI_Info_free (MPI_Info* info);
int MPI_Info_get (MPI_Info info, const(char)* key, int valuelen, char* value, int* flag);
int MPI_Info_get_nkeys (MPI_Info info, int* nkeys);
int MPI_Info_get_nthkey (MPI_Info info, int n, char* key);
int MPI_Info_get_valuelen (MPI_Info info, const(char)* key, int* valuelen, int* flag);
int MPI_Info_set (MPI_Info info, const(char)* key, const(char)* value);
int MPI_Pack_external (const(char)* datarep, const(void)* inbuf, int incount, MPI_Datatype datatype, void* outbuf, MPI_Aint outsize, MPI_Aint* position);
int MPI_Pack_external_size (const(char)* datarep, int incount, MPI_Datatype datatype, MPI_Aint* size);
int MPI_Request_get_status (MPI_Request request, int* flag, MPI_Status* status);
int MPI_Status_c2f (const(MPI_Status)* c_status, MPI_Fint* f_status);
int MPI_Status_f2c (const(MPI_Fint)* f_status, MPI_Status* c_status);
int MPI_Type_create_darray (int size, int rank, int ndims, const(int)* array_of_gsizes, const(int)* array_of_distribs, const(int)* array_of_dargs, const(int)* array_of_psizes, int order, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_create_hindexed (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_create_hvector (int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_create_indexed_block (int count, int blocklength, const(int)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_create_hindexed_block (int count, int blocklength, const(MPI_Aint)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_create_resized (MPI_Datatype oldtype, MPI_Aint lb, MPI_Aint extent, MPI_Datatype* newtype);
int MPI_Type_create_struct (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, const(MPI_Datatype)* array_of_types, MPI_Datatype* newtype);
int MPI_Type_create_subarray (int ndims, const(int)* array_of_sizes, const(int)* array_of_subsizes, const(int)* array_of_starts, int order, MPI_Datatype oldtype, MPI_Datatype* newtype);
int MPI_Type_get_extent (MPI_Datatype datatype, MPI_Aint* lb, MPI_Aint* extent);
int MPI_Type_get_true_extent (MPI_Datatype datatype, MPI_Aint* true_lb, MPI_Aint* true_extent);
int MPI_Unpack_external (const(char)* datarep, const(void)* inbuf, MPI_Aint insize, MPI_Aint* position, void* outbuf, int outcount, MPI_Datatype datatype);
int MPI_Win_create_errhandler (void function (MPI_Win*, int*, ...) win_errhandler_fn, MPI_Errhandler* errhandler);
int MPI_Win_get_errhandler (MPI_Win win, MPI_Errhandler* errhandler);
int MPI_Win_set_errhandler (MPI_Win win, MPI_Errhandler errhandler);

/* Fortran 90-related functions.  These routines are available only if
   Fortran 90 support is enabled 
*/
int MPI_Type_create_f90_integer (int range, MPI_Datatype* newtype);
int MPI_Type_create_f90_real (int precision, int range, MPI_Datatype* newtype);
int MPI_Type_create_f90_complex (int precision, int range, MPI_Datatype* newtype);
int MPI_Reduce_local (const(void)* inbuf, void* inoutbuf, int count, MPI_Datatype datatype, MPI_Op op);
int MPI_Op_commutative (MPI_Op op, int* commute);
int MPI_Reduce_scatter_block (const(void)* sendbuf, void* recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int MPI_Dist_graph_create_adjacent (MPI_Comm comm_old, int indegree, const(int)* sources, const(int)* sourceweights, int outdegree, const(int)* destinations, const(int)* destweights, MPI_Info info, int reorder, MPI_Comm* comm_dist_graph);
int MPI_Dist_graph_create (MPI_Comm comm_old, int n, const(int)* sources, const(int)* degrees, const(int)* destinations, const(int)* weights, MPI_Info info, int reorder, MPI_Comm* comm_dist_graph);
int MPI_Dist_graph_neighbors_count (MPI_Comm comm, int* indegree, int* outdegree, int* weighted);
int MPI_Dist_graph_neighbors (MPI_Comm comm, int maxindegree, int* sources, int* sourceweights, int maxoutdegree, int* destinations, int* destweights);

/* Matched probe functionality */
int MPI_Improbe (int source, int tag, MPI_Comm comm, int* flag, MPI_Message* message, MPI_Status* status);
int MPI_Imrecv (void* buf, int count, MPI_Datatype datatype, MPI_Message* message, MPI_Request* request);
int MPI_Mprobe (int source, int tag, MPI_Comm comm, MPI_Message* message, MPI_Status* status);
int MPI_Mrecv (void* buf, int count, MPI_Datatype datatype, MPI_Message* message, MPI_Status* status);

/* Nonblocking collectives */
int MPI_Comm_idup (MPI_Comm comm, MPI_Comm* newcomm, MPI_Request* request);
int MPI_Ibarrier (MPI_Comm comm, MPI_Request* request);
int MPI_Ibcast (void* buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm, MPI_Request* request);
int MPI_Igather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int MPI_Igatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int MPI_Iscatter (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int MPI_Iscatterv (const(void)* sendbuf, const(int)* sendcounts, const(int)* displs, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int MPI_Iallgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Iallgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ialltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ialltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ialltoallw (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm, MPI_Request* request);
int MPI_Ireduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm, MPI_Request* request);
int MPI_Iallreduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int MPI_Ireduce_scatter (const(void)* sendbuf, void* recvbuf, const(int)* recvcounts, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int MPI_Ireduce_scatter_block (const(void)* sendbuf, void* recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int MPI_Iscan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int MPI_Iexscan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);

/* Neighborhood collectives */
int MPI_Ineighbor_allgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ineighbor_allgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ineighbor_alltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ineighbor_alltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int MPI_Ineighbor_alltoallw (const(void)* sendbuf, const(int)* sendcounts, const(MPI_Aint)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(MPI_Aint)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm, MPI_Request* request);
int MPI_Neighbor_allgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Neighbor_allgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Neighbor_alltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Neighbor_alltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm);
int MPI_Neighbor_alltoallw (const(void)* sendbuf, const(int)* sendcounts, const(MPI_Aint)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(MPI_Aint)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm);

/* Shared memory */
int MPI_Comm_split_type (MPI_Comm comm, int split_type, int key, MPI_Info info, MPI_Comm* newcomm);

/* MPI-3 "large count" routines */
int MPI_Get_elements_x (const(MPI_Status)* status, MPI_Datatype datatype, MPI_Count* count);
int MPI_Status_set_elements_x (MPI_Status* status, MPI_Datatype datatype, MPI_Count count);
int MPI_Type_get_extent_x (MPI_Datatype datatype, MPI_Count* lb, MPI_Count* extent);
int MPI_Type_get_true_extent_x (MPI_Datatype datatype, MPI_Count* lb, MPI_Count* extent);
int MPI_Type_size_x (MPI_Datatype datatype, MPI_Count* size);

/* Noncollective communicator creation */
int MPI_Comm_create_group (MPI_Comm comm, MPI_Group group, int tag, MPI_Comm* newcomm);

/* Non-standard but public extensions to MPI */
/* Fault Tolerance Extensions */
int MPIX_Comm_group_failed (MPI_Comm comm, MPI_Group* failed_group);
int MPIX_Comm_remote_group_failed (MPI_Comm comm, MPI_Group* failed_group);
int MPIX_Comm_reenable_anysource (MPI_Comm comm, MPI_Group* failed_group);

/* MPI_T interface */
/* The MPI_T routines are available only in C bindings - tell tools that they
   can skip these prototypes */
/* Begin Skip Prototypes */
int MPI_T_init_thread (int required, int* provided);
int MPI_T_finalize ();
int MPI_T_enum_get_info (MPI_T_enum enumtype, int* num, char* name, int* name_len);
int MPI_T_enum_get_item (MPI_T_enum enumtype, int indx, int* value, char* name, int* name_len);
int MPI_T_cvar_get_num (int* num_cvar);
int MPI_T_cvar_get_info (int cvar_index, char* name, int* name_len, int* verbosity, MPI_Datatype* datatype, MPI_T_enum* enumtype, char* desc, int* desc_len, int* binding, int* scope_);
int MPI_T_cvar_handle_alloc (int cvar_index, void* obj_handle, MPI_T_cvar_handle* handle, int* count);
int MPI_T_cvar_handle_free (MPI_T_cvar_handle* handle);
int MPI_T_cvar_read (MPI_T_cvar_handle handle, void* buf);
int MPI_T_cvar_write (MPI_T_cvar_handle handle, void* buf);
int MPI_T_pvar_get_num (int* num_pvar);
int MPI_T_pvar_get_info (int pvar_index, char* name, int* name_len, int* verbosity, int* var_class, MPI_Datatype* datatype, MPI_T_enum* enumtype, char* desc, int* desc_len, int* binding, int* readonly, int* continuous, int* atomic);
int MPI_T_pvar_session_create (MPI_T_pvar_session* session);
int MPI_T_pvar_session_free (MPI_T_pvar_session* session);
int MPI_T_pvar_handle_alloc (MPI_T_pvar_session session, int pvar_index, void* obj_handle, MPI_T_pvar_handle* handle, int* count);
int MPI_T_pvar_handle_free (MPI_T_pvar_session session, MPI_T_pvar_handle* handle);
int MPI_T_pvar_start (MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int MPI_T_pvar_stop (MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int MPI_T_pvar_read (MPI_T_pvar_session session, MPI_T_pvar_handle handle, void* buf);
int MPI_T_pvar_write (MPI_T_pvar_session session, MPI_T_pvar_handle handle, void* buf);
int MPI_T_pvar_reset (MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int MPI_T_pvar_readreset (MPI_T_pvar_session session, MPI_T_pvar_handle handle, void* buf);
int MPI_T_category_get_num (int* num_cat);
int MPI_T_category_get_info (int cat_index, char* name, int* name_len, char* desc, int* desc_len, int* num_cvars, int* num_pvars, int* num_categories);
int MPI_T_category_get_cvars (int cat_index, int len, int* indices);
int MPI_T_category_get_pvars (int cat_index, int len, int* indices);
int MPI_T_category_get_categories (int cat_index, int len, int* indices);
int MPI_T_category_changed (int* stamp);
/* End Skip Prototypes */
/* End Prototypes */

/* Here are the bindings of the profiling routines */
int PMPI_Send (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int PMPI_Recv (void* buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Status* status);
int PMPI_Get_count (const(MPI_Status)* status, MPI_Datatype datatype, int* count);
int PMPI_Bsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int PMPI_Ssend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int PMPI_Rsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm);
int PMPI_Buffer_attach (void* buffer, int size);
int PMPI_Buffer_detach (void* buffer_addr, int* size);
int PMPI_Isend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Ibsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Issend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Irsend (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Irecv (void* buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Wait (MPI_Request* request, MPI_Status* status);
int PMPI_Test (MPI_Request* request, int* flag, MPI_Status* status);
int PMPI_Request_free (MPI_Request* request);
int PMPI_Waitany (int count, MPI_Request* array_of_requests, int* indx, MPI_Status* status);
int PMPI_Testany (int count, MPI_Request* array_of_requests, int* indx, int* flag, MPI_Status* status);
int PMPI_Waitall (int count, MPI_Request* array_of_requests, MPI_Status* array_of_statuses);
int PMPI_Testall (int count, MPI_Request* array_of_requests, int* flag, MPI_Status* array_of_statuses);
int PMPI_Waitsome (int incount, MPI_Request* array_of_requests, int* outcount, int* array_of_indices, MPI_Status* array_of_statuses);
int PMPI_Testsome (int incount, MPI_Request* array_of_requests, int* outcount, int* array_of_indices, MPI_Status* array_of_statuses);
int PMPI_Iprobe (int source, int tag, MPI_Comm comm, int* flag, MPI_Status* status);
int PMPI_Probe (int source, int tag, MPI_Comm comm, MPI_Status* status);
int PMPI_Cancel (MPI_Request* request);
int PMPI_Test_cancelled (const(MPI_Status)* status, int* flag);
int PMPI_Send_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Bsend_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Ssend_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Rsend_init (const(void)* buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Recv_init (void* buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request* request);
int PMPI_Start (MPI_Request* request);
int PMPI_Startall (int count, MPI_Request* array_of_requests);
int PMPI_Sendrecv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, int dest, int sendtag, void* recvbuf, int recvcount, MPI_Datatype recvtype, int source, int recvtag, MPI_Comm comm, MPI_Status* status);
int PMPI_Sendrecv_replace (void* buf, int count, MPI_Datatype datatype, int dest, int sendtag, int source, int recvtag, MPI_Comm comm, MPI_Status* status);
int PMPI_Type_contiguous (int count, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_vector (int count, int blocklength, int stride, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_hvector (int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_indexed (int count, const(int)* array_of_blocklengths, const(int)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_hindexed (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_struct (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, const(MPI_Datatype)* array_of_types, MPI_Datatype* newtype);
int PMPI_Address (const(void)* location, MPI_Aint* address);
int PMPI_Type_extent (MPI_Datatype datatype, MPI_Aint* extent);
int PMPI_Type_size (MPI_Datatype datatype, int* size);
int PMPI_Type_lb (MPI_Datatype datatype, MPI_Aint* displacement);
int PMPI_Type_ub (MPI_Datatype datatype, MPI_Aint* displacement);
int PMPI_Type_commit (MPI_Datatype* datatype);
int PMPI_Type_free (MPI_Datatype* datatype);
int PMPI_Get_elements (const(MPI_Status)* status, MPI_Datatype datatype, int* count);
int PMPI_Pack (const(void)* inbuf, int incount, MPI_Datatype datatype, void* outbuf, int outsize, int* position, MPI_Comm comm);
int PMPI_Unpack (const(void)* inbuf, int insize, int* position, void* outbuf, int outcount, MPI_Datatype datatype, MPI_Comm comm);
int PMPI_Pack_size (int incount, MPI_Datatype datatype, MPI_Comm comm, int* size);
int PMPI_Barrier (MPI_Comm comm);
int PMPI_Bcast (void* buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm);
int PMPI_Gather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm);
int PMPI_Gatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, int root, MPI_Comm comm);
int PMPI_Scatter (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm);
int PMPI_Scatterv (const(void)* sendbuf, const(int)* sendcounts, const(int)* displs, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm);
int PMPI_Allgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Allgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Alltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Alltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Alltoallw (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm);
int PMPI_Exscan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int PMPI_Reduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm);
int PMPI_Op_create (void function (void*, void*, int*, MPI_Datatype*) user_fn, int commute, MPI_Op* op);
int PMPI_Op_free (MPI_Op* op);
int PMPI_Allreduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int PMPI_Reduce_scatter (const(void)* sendbuf, void* recvbuf, const(int)* recvcounts, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int PMPI_Scan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int PMPI_Group_size (MPI_Group group, int* size);
int PMPI_Group_rank (MPI_Group group, int* rank);
int PMPI_Group_translate_ranks (MPI_Group group1, int n, const(int)* ranks1, MPI_Group group2, int* ranks2);
int PMPI_Group_compare (MPI_Group group1, MPI_Group group2, int* result);
int PMPI_Comm_group (MPI_Comm comm, MPI_Group* group);
int PMPI_Group_union (MPI_Group group1, MPI_Group group2, MPI_Group* newgroup);
int PMPI_Group_intersection (MPI_Group group1, MPI_Group group2, MPI_Group* newgroup);
int PMPI_Group_difference (MPI_Group group1, MPI_Group group2, MPI_Group* newgroup);
int PMPI_Group_incl (MPI_Group group, int n, const(int)* ranks, MPI_Group* newgroup);
int PMPI_Group_excl (MPI_Group group, int n, const(int)* ranks, MPI_Group* newgroup);
int PMPI_Group_range_incl (MPI_Group group, int n, int[3]* ranges, MPI_Group* newgroup);
int PMPI_Group_range_excl (MPI_Group group, int n, int[3]* ranges, MPI_Group* newgroup);
int PMPI_Group_free (MPI_Group* group);
int PMPI_Comm_size (MPI_Comm comm, int* size);
int PMPI_Comm_rank (MPI_Comm comm, int* rank);
int PMPI_Comm_compare (MPI_Comm comm1, MPI_Comm comm2, int* result);
int PMPI_Comm_dup (MPI_Comm comm, MPI_Comm* newcomm);
int PMPI_Comm_dup_with_info (MPI_Comm comm, MPI_Info info, MPI_Comm* newcomm);
int PMPI_Comm_create (MPI_Comm comm, MPI_Group group, MPI_Comm* newcomm);
int PMPI_Comm_split (MPI_Comm comm, int color, int key, MPI_Comm* newcomm);
int PMPI_Comm_free (MPI_Comm* comm);
int PMPI_Comm_test_inter (MPI_Comm comm, int* flag);
int PMPI_Comm_remote_size (MPI_Comm comm, int* size);
int PMPI_Comm_remote_group (MPI_Comm comm, MPI_Group* group);
int PMPI_Intercomm_create (MPI_Comm local_comm, int local_leader, MPI_Comm peer_comm, int remote_leader, int tag, MPI_Comm* newintercomm);
int PMPI_Intercomm_merge (MPI_Comm intercomm, int high, MPI_Comm* newintracomm);
int PMPI_Keyval_create (int function (MPI_Comm, int, void*, void*, void*, int*) copy_fn, int function (MPI_Comm, int, void*, void*) delete_fn, int* keyval, void* extra_state);
int PMPI_Keyval_free (int* keyval);
int PMPI_Attr_put (MPI_Comm comm, int keyval, void* attribute_val);
int PMPI_Attr_get (MPI_Comm comm, int keyval, void* attribute_val, int* flag);
int PMPI_Attr_delete (MPI_Comm comm, int keyval);
int PMPI_Topo_test (MPI_Comm comm, int* status);
int PMPI_Cart_create (MPI_Comm comm_old, int ndims, const(int)* dims, const(int)* periods, int reorder, MPI_Comm* comm_cart);
int PMPI_Dims_create (int nnodes, int ndims, int* dims);
int PMPI_Graph_create (MPI_Comm comm_old, int nnodes, const(int)* indx, const(int)* edges, int reorder, MPI_Comm* comm_graph);
int PMPI_Graphdims_get (MPI_Comm comm, int* nnodes, int* nedges);
int PMPI_Graph_get (MPI_Comm comm, int maxindex, int maxedges, int* indx, int* edges);
int PMPI_Cartdim_get (MPI_Comm comm, int* ndims);
int PMPI_Cart_get (MPI_Comm comm, int maxdims, int* dims, int* periods, int* coords);
int PMPI_Cart_rank (MPI_Comm comm, const(int)* coords, int* rank);
int PMPI_Cart_coords (MPI_Comm comm, int rank, int maxdims, int* coords);
int PMPI_Graph_neighbors_count (MPI_Comm comm, int rank, int* nneighbors);
int PMPI_Graph_neighbors (MPI_Comm comm, int rank, int maxneighbors, int* neighbors);
int PMPI_Cart_shift (MPI_Comm comm, int direction, int disp, int* rank_source, int* rank_dest);
int PMPI_Cart_sub (MPI_Comm comm, const(int)* remain_dims, MPI_Comm* newcomm);
int PMPI_Cart_map (MPI_Comm comm, int ndims, const(int)* dims, const(int)* periods, int* newrank);
int PMPI_Graph_map (MPI_Comm comm, int nnodes, const(int)* indx, const(int)* edges, int* newrank);
int PMPI_Get_processor_name (char* name, int* resultlen);
int PMPI_Get_version (int* version_, int* subversion);
int PMPI_Get_library_version (char* version_, int* resultlen);
int PMPI_Errhandler_create (void function (MPI_Comm*, int*, ...) function_, MPI_Errhandler* errhandler);
int PMPI_Errhandler_set (MPI_Comm comm, MPI_Errhandler errhandler);
int PMPI_Errhandler_get (MPI_Comm comm, MPI_Errhandler* errhandler);
int PMPI_Errhandler_free (MPI_Errhandler* errhandler);
int PMPI_Error_string (int errorcode, char* string, int* resultlen);
int PMPI_Error_class (int errorcode, int* errorclass);
double PMPI_Wtime ();
double PMPI_Wtick ();
int PMPI_Init (int* argc, char*** argv);
int PMPI_Finalize ();
int PMPI_Initialized (int* flag);
int PMPI_Abort (MPI_Comm comm, int errorcode);

/* Note that we may need to define a @PCONTROL_LIST@ depending on whether
   stdargs are supported */
int PMPI_Pcontrol (const int level, ...);

/* Process Creation and Management */
int PMPI_Close_port (const(char)* port_name);
int PMPI_Comm_accept (const(char)* port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm* newcomm);
int PMPI_Comm_connect (const(char)* port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm* newcomm);
int PMPI_Comm_disconnect (MPI_Comm* comm);
int PMPI_Comm_get_parent (MPI_Comm* parent);
int PMPI_Comm_join (int fd, MPI_Comm* intercomm);
int PMPI_Comm_spawn (const(char)* command, char** argv, int maxprocs, MPI_Info info, int root, MPI_Comm comm, MPI_Comm* intercomm, int* array_of_errcodes);
int PMPI_Comm_spawn_multiple (int count, char** array_of_commands, char*** array_of_argv, const(int)* array_of_maxprocs, const(MPI_Info)* array_of_info, int root, MPI_Comm comm, MPI_Comm* intercomm, int* array_of_errcodes);
int PMPI_Lookup_name (const(char)* service_name, MPI_Info info, char* port_name);
int PMPI_Open_port (MPI_Info info, char* port_name);
int PMPI_Publish_name (const(char)* service_name, MPI_Info info, const(char)* port_name);
int PMPI_Unpublish_name (const(char)* service_name, MPI_Info info, const(char)* port_name);
int PMPI_Comm_set_info (MPI_Comm comm, MPI_Info info);
int PMPI_Comm_get_info (MPI_Comm comm, MPI_Info* info);

/* One-Sided Communications */
int PMPI_Accumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win);
int PMPI_Get (void* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win);
int PMPI_Put (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win);
int PMPI_Win_complete (MPI_Win win);
int PMPI_Win_create (void* base, MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, MPI_Win* win);
int PMPI_Win_fence (int assert_, MPI_Win win);
int PMPI_Win_free (MPI_Win* win);
int PMPI_Win_get_group (MPI_Win win, MPI_Group* group);
int PMPI_Win_lock (int lock_type, int rank, int assert_, MPI_Win win);
int PMPI_Win_post (MPI_Group group, int assert_, MPI_Win win);
int PMPI_Win_start (MPI_Group group, int assert_, MPI_Win win);
int PMPI_Win_test (MPI_Win win, int* flag);
int PMPI_Win_unlock (int rank, MPI_Win win);
int PMPI_Win_wait (MPI_Win win);

/* MPI-3 One-Sided Communication Routines */
int PMPI_Win_allocate (MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void* baseptr, MPI_Win* win);
int PMPI_Win_allocate_shared (MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void* baseptr, MPI_Win* win);
int PMPI_Win_shared_query (MPI_Win win, int rank, MPI_Aint* size, int* disp_unit, void* baseptr);
int PMPI_Win_create_dynamic (MPI_Info info, MPI_Comm comm, MPI_Win* win);
int PMPI_Win_attach (MPI_Win win, void* base, MPI_Aint size);
int PMPI_Win_detach (MPI_Win win, const(void)* base);
int PMPI_Win_get_info (MPI_Win win, MPI_Info* info_used);
int PMPI_Win_set_info (MPI_Win win, MPI_Info info);
int PMPI_Get_accumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, void* result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win);
int PMPI_Fetch_and_op (const(void)* origin_addr, void* result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Op op, MPI_Win win);
int PMPI_Compare_and_swap (const(void)* origin_addr, const(void)* compare_addr, void* result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Win win);
int PMPI_Rput (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win, MPI_Request* request);
int PMPI_Rget (void* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win, MPI_Request* request);
int PMPI_Raccumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request* request);
int PMPI_Rget_accumulate (const(void)* origin_addr, int origin_count, MPI_Datatype origin_datatype, void* result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request* request);
int PMPI_Win_lock_all (int assert_, MPI_Win win);
int PMPI_Win_unlock_all (MPI_Win win);
int PMPI_Win_flush (int rank, MPI_Win win);
int PMPI_Win_flush_all (MPI_Win win);
int PMPI_Win_flush_local (int rank, MPI_Win win);
int PMPI_Win_flush_local_all (MPI_Win win);
int PMPI_Win_sync (MPI_Win win);

/* External Interfaces */
int PMPI_Add_error_class (int* errorclass);
int PMPI_Add_error_code (int errorclass, int* errorcode);
int PMPI_Add_error_string (int errorcode, const(char)* string);
int PMPI_Comm_call_errhandler (MPI_Comm comm, int errorcode);
int PMPI_Comm_create_keyval (int function (MPI_Comm, int, void*, void*, void*, int*) comm_copy_attr_fn, int function (MPI_Comm, int, void*, void*) comm_delete_attr_fn, int* comm_keyval, void* extra_state);
int PMPI_Comm_delete_attr (MPI_Comm comm, int comm_keyval);
int PMPI_Comm_free_keyval (int* comm_keyval);
int PMPI_Comm_get_attr (MPI_Comm comm, int comm_keyval, void* attribute_val, int* flag);
int PMPI_Comm_get_name (MPI_Comm comm, char* comm_name, int* resultlen);
int PMPI_Comm_set_attr (MPI_Comm comm, int comm_keyval, void* attribute_val);
int PMPI_Comm_set_name (MPI_Comm comm, const(char)* comm_name);
int PMPI_File_call_errhandler (MPI_File fh, int errorcode);
int PMPI_Grequest_complete (MPI_Request request);
int PMPI_Grequest_start (int function (void*, MPI_Status*) query_fn, int function (void*) free_fn, int function (void*, int) cancel_fn, void* extra_state, MPI_Request* request);
int PMPI_Init_thread (int* argc, char*** argv, int required, int* provided);
int PMPI_Is_thread_main (int* flag);
int PMPI_Query_thread (int* provided);
int PMPI_Status_set_cancelled (MPI_Status* status, int flag);
int PMPI_Status_set_elements (MPI_Status* status, MPI_Datatype datatype, int count);
int PMPI_Type_create_keyval (int function (MPI_Datatype, int, void*, void*, void*, int*) type_copy_attr_fn, int function (MPI_Datatype, int, void*, void*) type_delete_attr_fn, int* type_keyval, void* extra_state);
int PMPI_Type_delete_attr (MPI_Datatype datatype, int type_keyval);
int PMPI_Type_dup (MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_free_keyval (int* type_keyval);
int PMPI_Type_get_attr (MPI_Datatype datatype, int type_keyval, void* attribute_val, int* flag);
int PMPI_Type_get_contents (MPI_Datatype datatype, int max_integers, int max_addresses, int max_datatypes, int* array_of_integers, MPI_Aint* array_of_addresses, MPI_Datatype* array_of_datatypes);
int PMPI_Type_get_envelope (MPI_Datatype datatype, int* num_integers, int* num_addresses, int* num_datatypes, int* combiner);
int PMPI_Type_get_name (MPI_Datatype datatype, char* type_name, int* resultlen);
int PMPI_Type_set_attr (MPI_Datatype datatype, int type_keyval, void* attribute_val);
int PMPI_Type_set_name (MPI_Datatype datatype, const(char)* type_name);
int PMPI_Type_match_size (int typeclass, int size, MPI_Datatype* datatype);
int PMPI_Win_call_errhandler (MPI_Win win, int errorcode);
int PMPI_Win_create_keyval (int function (MPI_Win, int, void*, void*, void*, int*) win_copy_attr_fn, int function (MPI_Win, int, void*, void*) win_delete_attr_fn, int* win_keyval, void* extra_state);
int PMPI_Win_delete_attr (MPI_Win win, int win_keyval);
int PMPI_Win_free_keyval (int* win_keyval);
int PMPI_Win_get_attr (MPI_Win win, int win_keyval, void* attribute_val, int* flag);
int PMPI_Win_get_name (MPI_Win win, char* win_name, int* resultlen);
int PMPI_Win_set_attr (MPI_Win win, int win_keyval, void* attribute_val);
int PMPI_Win_set_name (MPI_Win win, const(char)* win_name);
int PMPI_Alloc_mem (MPI_Aint size, MPI_Info info, void* baseptr);
int PMPI_Comm_create_errhandler (void function (MPI_Comm*, int*, ...) comm_errhandler_fn, MPI_Errhandler* errhandler);
int PMPI_Comm_get_errhandler (MPI_Comm comm, MPI_Errhandler* errhandler);
int PMPI_Comm_set_errhandler (MPI_Comm comm, MPI_Errhandler errhandler);
int PMPI_File_create_errhandler (void function (MPI_File*, int*, ...) file_errhandler_fn, MPI_Errhandler* errhandler);
int PMPI_File_get_errhandler (MPI_File file, MPI_Errhandler* errhandler);
int PMPI_File_set_errhandler (MPI_File file, MPI_Errhandler errhandler);
int PMPI_Finalized (int* flag);
int PMPI_Free_mem (void* base);
int PMPI_Get_address (const(void)* location, MPI_Aint* address);
int PMPI_Info_create (MPI_Info* info);
int PMPI_Info_delete (MPI_Info info, const(char)* key);
int PMPI_Info_dup (MPI_Info info, MPI_Info* newinfo);
int PMPI_Info_free (MPI_Info* info);
int PMPI_Info_get (MPI_Info info, const(char)* key, int valuelen, char* value, int* flag);
int PMPI_Info_get_nkeys (MPI_Info info, int* nkeys);
int PMPI_Info_get_nthkey (MPI_Info info, int n, char* key);
int PMPI_Info_get_valuelen (MPI_Info info, const(char)* key, int* valuelen, int* flag);
int PMPI_Info_set (MPI_Info info, const(char)* key, const(char)* value);
int PMPI_Pack_external (const(char)* datarep, const(void)* inbuf, int incount, MPI_Datatype datatype, void* outbuf, MPI_Aint outsize, MPI_Aint* position);
int PMPI_Pack_external_size (const(char)* datarep, int incount, MPI_Datatype datatype, MPI_Aint* size);
int PMPI_Request_get_status (MPI_Request request, int* flag, MPI_Status* status);
int PMPI_Status_c2f (const(MPI_Status)* c_status, MPI_Fint* f_status);
int PMPI_Status_f2c (const(MPI_Fint)* f_status, MPI_Status* c_status);
int PMPI_Type_create_darray (int size, int rank, int ndims, const(int)* array_of_gsizes, const(int)* array_of_distribs, const(int)* array_of_dargs, const(int)* array_of_psizes, int order, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_create_hindexed (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_create_hvector (int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_create_indexed_block (int count, int blocklength, const(int)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_create_hindexed_block (int count, int blocklength, const(MPI_Aint)* array_of_displacements, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_create_resized (MPI_Datatype oldtype, MPI_Aint lb, MPI_Aint extent, MPI_Datatype* newtype);
int PMPI_Type_create_struct (int count, const(int)* array_of_blocklengths, const(MPI_Aint)* array_of_displacements, const(MPI_Datatype)* array_of_types, MPI_Datatype* newtype);
int PMPI_Type_create_subarray (int ndims, const(int)* array_of_sizes, const(int)* array_of_subsizes, const(int)* array_of_starts, int order, MPI_Datatype oldtype, MPI_Datatype* newtype);
int PMPI_Type_get_extent (MPI_Datatype datatype, MPI_Aint* lb, MPI_Aint* extent);
int PMPI_Type_get_true_extent (MPI_Datatype datatype, MPI_Aint* true_lb, MPI_Aint* true_extent);
int PMPI_Unpack_external (const(char)* datarep, const(void)* inbuf, MPI_Aint insize, MPI_Aint* position, void* outbuf, int outcount, MPI_Datatype datatype);
int PMPI_Win_create_errhandler (void function (MPI_Win*, int*, ...) win_errhandler_fn, MPI_Errhandler* errhandler);
int PMPI_Win_get_errhandler (MPI_Win win, MPI_Errhandler* errhandler);
int PMPI_Win_set_errhandler (MPI_Win win, MPI_Errhandler errhandler);

/* Fortran 90-related functions.  These routines are available only if
   Fortran 90 support is enabled 
*/
int PMPI_Type_create_f90_integer (int r, MPI_Datatype* newtype);
int PMPI_Type_create_f90_real (int p, int r, MPI_Datatype* newtype);
int PMPI_Type_create_f90_complex (int p, int r, MPI_Datatype* newtype);
int PMPI_Reduce_local (const(void)* inbuf, void* inoutbuf, int count, MPI_Datatype datatype, MPI_Op op);
int PMPI_Op_commutative (MPI_Op op, int* commute);
int PMPI_Reduce_scatter_block (const(void)* sendbuf, void* recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
int PMPI_Dist_graph_create_adjacent (MPI_Comm comm_old, int indegree, const(int)* sources, const(int)* sourceweights, int outdegree, const(int)* destinations, const(int)* destweights, MPI_Info info, int reorder, MPI_Comm* comm_dist_graph);
int PMPI_Dist_graph_create (MPI_Comm comm_old, int n, const(int)* sources, const(int)* degrees, const(int)* destinations, const(int)* weights, MPI_Info info, int reorder, MPI_Comm* comm_dist_graph);
int PMPI_Dist_graph_neighbors_count (MPI_Comm comm, int* indegree, int* outdegree, int* weighted);
int PMPI_Dist_graph_neighbors (MPI_Comm comm, int maxindegree, int* sources, int* sourceweights, int maxoutdegree, int* destinations, int* destweights);

/* Matched probe functionality */
int PMPI_Improbe (int source, int tag, MPI_Comm comm, int* flag, MPI_Message* message, MPI_Status* status);
int PMPI_Imrecv (void* buf, int count, MPI_Datatype datatype, MPI_Message* message, MPI_Request* request);
int PMPI_Mprobe (int source, int tag, MPI_Comm comm, MPI_Message* message, MPI_Status* status);
int PMPI_Mrecv (void* buf, int count, MPI_Datatype datatype, MPI_Message* message, MPI_Status* status);

/* Nonblocking collectives */
int PMPI_Comm_idup (MPI_Comm comm, MPI_Comm* newcomm, MPI_Request* request);
int PMPI_Ibarrier (MPI_Comm comm, MPI_Request* request);
int PMPI_Ibcast (void* buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm, MPI_Request* request);
int PMPI_Igather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int PMPI_Igatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int PMPI_Iscatter (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int PMPI_Iscatterv (const(void)* sendbuf, const(int)* sendcounts, const(int)* displs, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request* request);
int PMPI_Iallgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Iallgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ialltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ialltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ialltoallw (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm, MPI_Request* request);
int PMPI_Ireduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm, MPI_Request* request);
int PMPI_Iallreduce (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int PMPI_Ireduce_scatter (const(void)* sendbuf, void* recvbuf, const(int)* recvcounts, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int PMPI_Ireduce_scatter_block (const(void)* sendbuf, void* recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int PMPI_Iscan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);
int PMPI_Iexscan (const(void)* sendbuf, void* recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request* request);

/* Neighborhood collectives */
int PMPI_Ineighbor_allgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ineighbor_allgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ineighbor_alltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ineighbor_alltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request* request);
int PMPI_Ineighbor_alltoallw (const(void)* sendbuf, const(int)* sendcounts, const(MPI_Aint)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(MPI_Aint)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm, MPI_Request* request);
int PMPI_Neighbor_allgather (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Neighbor_allgatherv (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* displs, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Neighbor_alltoall (const(void)* sendbuf, int sendcount, MPI_Datatype sendtype, void* recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Neighbor_alltoallv (const(void)* sendbuf, const(int)* sendcounts, const(int)* sdispls, MPI_Datatype sendtype, void* recvbuf, const(int)* recvcounts, const(int)* rdispls, MPI_Datatype recvtype, MPI_Comm comm);
int PMPI_Neighbor_alltoallw (const(void)* sendbuf, const(int)* sendcounts, const(MPI_Aint)* sdispls, const(MPI_Datatype)* sendtypes, void* recvbuf, const(int)* recvcounts, const(MPI_Aint)* rdispls, const(MPI_Datatype)* recvtypes, MPI_Comm comm);

/* Shared memory */
int PMPI_Comm_split_type (MPI_Comm comm, int split_type, int key, MPI_Info info, MPI_Comm* newcomm);

/* Noncollective communicator creation */
int PMPI_Comm_create_group (MPI_Comm comm, MPI_Group group, int tag, MPI_Comm* newcomm);

/* MPI-3 "large count" routines */
int PMPI_Get_elements_x (const(MPI_Status)* status, MPI_Datatype datatype, MPI_Count* count);
int PMPI_Status_set_elements_x (MPI_Status* status, MPI_Datatype datatype, MPI_Count count);
int PMPI_Type_get_extent_x (MPI_Datatype datatype, MPI_Count* lb, MPI_Count* extent);
int PMPI_Type_get_true_extent_x (MPI_Datatype datatype, MPI_Count* lb, MPI_Count* extent);
int PMPI_Type_size_x (MPI_Datatype datatype, MPI_Count* size);

/* Non-standard but public extensions to MPI */
/* Fault Tolerance Extensions */
int PMPIX_Comm_group_failed (MPI_Comm comm, MPI_Group* failed_group);
int PMPIX_Comm_remote_group_failed (MPI_Comm comm, MPI_Group* failed_group);
int PMPIX_Comm_reenable_anysource (MPI_Comm comm, MPI_Group* failed_group);

/* MPI_T interface */
/* The MPI_T routines are available only in C bindings - tell tools that they
   can skip these prototypes */
/* Begin Skip Prototypes */
int PMPI_T_init_thread (int required, int* provided);
int PMPI_T_finalize ();
int PMPI_T_enum_get_info (MPI_T_enum enumtype, int* num, char* name, int* name_len);
int PMPI_T_enum_get_item (MPI_T_enum enumtype, int indx, int* value, char* name, int* name_len);
int PMPI_T_cvar_get_num (int* num_cvar);
int PMPI_T_cvar_get_info (int cvar_index, char* name, int* name_len, int* verbosity, MPI_Datatype* datatype, MPI_T_enum* enumtype, char* desc, int* desc_len, int* binding, int* scope_);
int PMPI_T_cvar_handle_alloc (int cvar_index, void* obj_handle, MPI_T_cvar_handle* handle, int* count);
int PMPI_T_cvar_handle_free (MPI_T_cvar_handle* handle);
int PMPI_T_cvar_read (MPI_T_cvar_handle handle, void* buf);
int PMPI_T_cvar_write (MPI_T_cvar_handle handle, void* buf);
int PMPI_T_pvar_get_num (int* num_pvar);
int PMPI_T_pvar_get_info (int pvar_index, char* name, int* name_len, int* verbosity, int* var_class, MPI_Datatype* datatype, MPI_T_enum* enumtype, char* desc, int* desc_len, int* binding, int* readonly, int* continuous, int* atomic);
int PMPI_T_pvar_session_create (MPI_T_pvar_session* session);
int PMPI_T_pvar_session_free (MPI_T_pvar_session* session);
int PMPI_T_pvar_handle_alloc (MPI_T_pvar_session session, int pvar_index, void* obj_handle, MPI_T_pvar_handle* handle, int* count);
int PMPI_T_pvar_handle_free (MPI_T_pvar_session session, MPI_T_pvar_handle* handle);
int PMPI_T_pvar_start (MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int PMPI_T_pvar_stop (MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int PMPI_T_pvar_read (MPI_T_pvar_session session, MPI_T_pvar_handle handle, void* buf);
int PMPI_T_pvar_write (MPI_T_pvar_session session, MPI_T_pvar_handle handle, void* buf);
int PMPI_T_pvar_reset (MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int PMPI_T_pvar_readreset (MPI_T_pvar_session session, MPI_T_pvar_handle handle, void* buf);
int PMPI_T_category_get_num (int* num_cat);
int PMPI_T_category_get_info (int cat_index, char* name, int* name_len, char* desc, int* desc_len, int* num_cvars, int* num_pvars, int* num_categories);
int PMPI_T_category_get_cvars (int cat_index, int len, int* indices);
int PMPI_T_category_get_pvars (int cat_index, int len, int* indices);
int PMPI_T_category_get_categories (int cat_index, int len, int* indices);
int PMPI_T_category_changed (int* stamp);
/* End Skip Prototypes */

/* TODO: feature advertisement */
// #define MPIIMPL_ADVERTISES_FEATURES 1
// #define MPIIMPL_HAVE_MPI_INFO 1                                                 
// #define MPIIMPL_HAVE_MPI_COMBINER_DARRAY 1                                      
// #define MPIIMPL_HAVE_MPI_TYPE_CREATE_DARRAY 1
// #define MPIIMPL_HAVE_MPI_COMBINER_SUBARRAY 1                                    
// #define MPIIMPL_HAVE_MPI_TYPE_CREATE_DARRAY 1
// #define MPIIMPL_HAVE_MPI_COMBINER_DUP 1                                         
// #define MPIIMPL_HAVE_MPI_GREQUEST 1      
// #define MPIIMPL_HAVE_STATUS_SET_BYTES 1
// #define MPIIMPL_HAVE_STATUS_SET_INFO 1

/* TODO: mpio.h
// #include "mpio.h"

/* Generalized requests extensions */
alias int MPIX_Grequest_class;
int MPIX_Grequest_class_create (int function (void*, MPI_Status*) query_fn, int function (void*) free_fn, int function (void*, int) cancel_fn, int function (void*, MPI_Status*) poll_fn, int function (int, void**, double, MPI_Status*) wait_fn, MPIX_Grequest_class* greq_class);
int MPIX_Grequest_class_allocate (MPIX_Grequest_class greq_class, void* extra_state, MPI_Request* request);
int MPIX_Grequest_start (int function (void*, MPI_Status*) query_fn, int function (void*) free_fn, int function (void*, int) cancel_fn, int function (void*, MPI_Status*) poll_fn, int function (int, void**, double, MPI_Status*) wait_fn, void* extra_state, MPI_Request* request);

/* RMA Mutexes Extensions */
struct mpixi_mutex_s;
alias mpixi_mutex_s* MPIX_Mutex;
int MPIX_Mutex_create (int count, MPI_Comm comm, MPIX_Mutex* hdl);
int MPIX_Mutex_free (MPIX_Mutex* hdl);
int MPIX_Mutex_lock (MPIX_Mutex hdl, int mutex, int proc);
int MPIX_Mutex_unlock (MPIX_Mutex hdl, int mutex, int proc);

/* Generalized requests extensions */
int PMPIX_Grequest_class_create (int function (void*, MPI_Status*) query_fn, int function (void*) free_fn, int function (void*, int) cancel_fn, int function (void*, MPI_Status*) poll_fn, int function (int, void**, double, MPI_Status*) wait_fn, MPIX_Grequest_class* greq_class);
int PMPIX_Grequest_class_allocate (MPIX_Grequest_class greq_class, void* extra_state, MPI_Request* request);
int PMPIX_Grequest_start (int function (void*, MPI_Status*) query_fn, int function (void*) free_fn, int function (void*, int) cancel_fn, int function (void*, MPI_Status*) poll_fn, int function (int, void**, double, MPI_Status*) wait_fn, void* extra_state, MPI_Request* request);

/* RMA Mutexes Extensions */
int PMPIX_Mutex_create (int count, MPI_Comm comm, MPIX_Mutex* hdl);
int PMPIX_Mutex_free (MPIX_Mutex* hdl);
int PMPIX_Mutex_lock (MPIX_Mutex hdl, int mutex, int proc);
int PMPIX_Mutex_unlock (MPIX_Mutex hdl, int mutex, int proc);

