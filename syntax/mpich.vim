" MPI types
syn keyword cType MPI_Datatype MPI_Comm MPI_Group MPI_Op MPI_Errhandler
syn keyword cType MPI_Request MPI_User_function MPI_Copy_function 
syn keyword cType MPI_Delete_function MPI_Info MPI_Handler_function

syn keyword cConstant MPI_MAX_PORT_NAME
" results of compare operations
syn keyword cConstant MPI_IDENT MPI_CONGRUENT MPI_SIMILAR MPI_UNEQUAL
" data types
syn keyword cConstant MPI_CHAR MPI_UNSIGNED_CHAR MPI_BYTE MPI_SHORT
syn keyword cConstant MPI_UNSIGNED_SHORT MPI_INT MPI_UNSIGNED MPI_LONG
syn keyword cConstant MPI_UNSIGNED_LONG MPI_FLOAT MPI_DOUBLE MPI_LONG_DOUBLE
syn keyword cConstant MPI_LONG_LONG_INT MPI_LONG_LONG 
syn keyword cConstant MPI_PACKED MPI_LB MPI_UB
syn keyword cConstant MPI_FLOAT_INT MPI_DOUBLE_INT MPI_LONG_INT MPI_SHORT_INT
syn keyword cConstant MPI_2INT MPI_LONG_DOUBLE_INT MPI_COMPLEX
syn keyword cConstant MPI_DOUBLE_COMPLEX MPI_LOGICAL MPI_REAL
syn keyword cConstant MPI_DOUBLE_PRECISION MPI_INTEGER MPI_2INTEGER
syn keyword cConstant MPI_2COMPLEX MPI_2DOUBLE_COMPLEX MPI_2REAL
syn keyword cConstant MPI_2DOUBLE_PRECISION MPI_CHARACTER
" communicators
syn keyword cConstant MPI_COMM_WORLD MPI_COMM_SELF
" groups
syn keyword cConstant MPI_GROUP_EMPTY
" collective operations
syn keyword cConstant MPI_MAX MPI_MIN MPI_SUM MPI_PROD MPI_LAND MPI_BAND
syn keyword cConstant MPI_LOR MPI_BOR MPI_LXOR MPI_BXOR MPI_MINLOC MPI_MAXLOC
" permanent key values
syn keyword cConstant MPI_TAG_UB MPI_HOST MPI_IO MPI_WTIME_IS_GLOBAL 
" null objects
syn keyword cConstant MPI_COMM_NULL MPI_OP_NULL MPI_GROUP_NULL
syn keyword cConstant MPI_DATATYPE_NULL MPI_REQUEST_NULL MPI_ERRHANDLER_NULL
" ?
syn keyword cConstant MPI_MAX_PROCESSOR_NAME MPI_MAX_ERROR_STRING MPI_MAX_NAME_STRING
syn keyword cConstant MPI_BSEND_OVERHEAD
" predefined constants
syn keyword cConstant MPI_UNDEFINED MPI_UNDEFINED_RANK MPI_KEYVAL_INVALID
" topology types
syn keyword cConstant MPI_GRAPH MPI_CART
" wildcards (?)
syn keyword cConstant MPI_BOTTOM MPI_PROC_NULL MPI_ANY_SOURCE MPI_ROOT MPI_ANY_TAG
" error handlers
syn keyword cConstant MPI_ERRORS_ARE_FATAL MPI_ERRORS_RETURN MPIR_ERRORS_WARN
" communicator callbacks
syn keyword cConstant MPI_NULL_COPY_FN MPI_NULL_DELETE_FN MPI_DUP_FN
syn keyword cConstant MPI_COMM_NULL_COPY_FN MPI_NULL_COPY_FN
syn keyword cConstant MPI_COMM_NULL_DELETE_FN MPI_NULL_DELETE_FN
syn keyword cConstant MPI_COMM_DUP_FN MPI_DUP_FN
" version data
syn keyword cConstant MPI_VERSION MPI_SUBVERSION MPICH_NAME MPICH_VERSION

" XXX: seguir desde la linea 200 de mpi.h
"
