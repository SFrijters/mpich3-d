/* -*- Mode: C; c-basic-offset:4 ; -*- */
/* 
 *
 *   Copyright (C) 1997 University of Chicago. 
 *   See COPYRIGHT notice in top-level directory.
 */

/* user include file for MPI-IO programs */

extern (C):

/* TODO: missing section */

/* MPI-IO function prototypes */

/* Section 9.2 */
/* Begin Prototypes */
int MPI_File_open (MPI_Comm comm, const(char)* filename, int amode, MPI_Info info, MPI_File* fh);
int MPI_File_close (MPI_File* fh);
int MPI_File_delete (const(char)* filename, MPI_Info info);
int MPI_File_set_size (MPI_File fh, MPI_Offset size);
int MPI_File_preallocate (MPI_File fh, MPI_Offset size);
int MPI_File_get_size (MPI_File fh, MPI_Offset* size);
int MPI_File_get_group (MPI_File fh, MPI_Group* group);
int MPI_File_get_amode (MPI_File fh, int* amode);
int MPI_File_set_info (MPI_File fh, MPI_Info info);
int MPI_File_get_info (MPI_File fh, MPI_Info* info_used);

/* Section 9.3 */
int MPI_File_set_view (MPI_File fh, MPI_Offset disp, MPI_Datatype etype, MPI_Datatype filetype, const(char)* datarep, MPI_Info info);
int MPI_File_get_view (MPI_File fh, MPI_Offset* disp, MPI_Datatype* etype, MPI_Datatype* filetype, char* datarep);

/* Section 9.4.2 */
int MPI_File_read_at (MPI_File fh, MPI_Offset offset, void* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_read_at_all (MPI_File fh, MPI_Offset offset, void* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_write_at (MPI_File fh, MPI_Offset offset, const(void)* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_write_at_all (MPI_File fh, MPI_Offset offset, const(void)* buf, int count, MPI_Datatype datatype, MPI_Status* status);

/* nonblocking calls currently use MPIO_Request, because generalized
   requests not yet implemented. For the same reason, MPIO_Test and 
   MPIO_Wait are used to test and wait on nonblocking I/O requests */ 
int MPI_File_iread_at (MPI_File fh, MPI_Offset offset, void* buf, int count, MPI_Datatype datatype, MPI_Request* request);
int MPI_File_iwrite_at (MPI_File fh, MPI_Offset offset, const(void)* buf, int count, MPI_Datatype datatype, MPI_Request* request);

/* Section 9.4.3 */
int MPI_File_read (MPI_File fh, void* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_read_all (MPI_File fh, void* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_write (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_write_all (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype, MPI_Status* status);

/* nonblocking calls currently use MPIO_Request, because generalized
   requests not yet implemented. For the same reason, MPIO_Test and 
   MPIO_Wait are used to test and wait on nonblocking I/O requests */ 

int MPI_File_iread (MPI_File fh, void* buf, int count, MPI_Datatype datatype, MPI_Request* request);
int MPI_File_iwrite (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype, MPI_Request* request);
int MPI_File_seek (MPI_File fh, MPI_Offset offset, int whence);
int MPI_File_get_position (MPI_File fh, MPI_Offset* offset);
int MPI_File_get_byte_offset (MPI_File fh, MPI_Offset offset, MPI_Offset* disp);

/* Section 9.4.4 */
int MPI_File_read_shared (MPI_File fh, void* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_write_shared (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_iread_shared (MPI_File fh, void* buf, int count, MPI_Datatype datatype, MPI_Request* request);
int MPI_File_iwrite_shared (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype, MPI_Request* request);
int MPI_File_read_ordered (MPI_File fh, void* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_write_ordered (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype, MPI_Status* status);
int MPI_File_seek_shared (MPI_File fh, MPI_Offset offset, int whence);
int MPI_File_get_position_shared (MPI_File fh, MPI_Offset* offset);

/* Section 9.4.5 */
int MPI_File_read_at_all_begin (MPI_File fh, MPI_Offset offset, void* buf, int count, MPI_Datatype datatype);
int MPI_File_read_at_all_end (MPI_File fh, void* buf, MPI_Status* status);
int MPI_File_write_at_all_begin (MPI_File fh, MPI_Offset offset, const(void)* buf, int count, MPI_Datatype datatype);
int MPI_File_write_at_all_end (MPI_File fh, const(void)* buf, MPI_Status* status);
int MPI_File_read_all_begin (MPI_File fh, void* buf, int count, MPI_Datatype datatype);
int MPI_File_read_all_end (MPI_File fh, void* buf, MPI_Status* status);
int MPI_File_write_all_begin (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype);
int MPI_File_write_all_end (MPI_File fh, const(void)* buf, MPI_Status* status);
int MPI_File_read_ordered_begin (MPI_File fh, void* buf, int count, MPI_Datatype datatype);
int MPI_File_read_ordered_end (MPI_File fh, void* buf, MPI_Status* status);
int MPI_File_write_ordered_begin (MPI_File fh, const(void)* buf, int count, MPI_Datatype datatype);
int MPI_File_write_ordered_end (MPI_File fh, const(void)* buf, MPI_Status* status);

/* Section 9.5.1 */
int MPI_File_get_type_extent (MPI_File fh, MPI_Datatype datatype, MPI_Aint* extent);

/* Section 9.5.3 */
int MPI_Register_datarep (const(char)* datarep, int function (void*, MPI_Datatype, int, void*, MPI_Offset, void*) read_conversion_fn, int function (void*, MPI_Datatype, int, void*, MPI_Offset, void*) write_conversion_fn, int function (MPI_Datatype, MPI_Aint*, void*) dtype_file_extent_fn, void* extra_state);

/* Section 9.6.1 */
int MPI_File_set_atomicity (MPI_File fh, int flag);
int MPI_File_get_atomicity (MPI_File fh, int* flag);
int MPI_File_sync (MPI_File fh);

/* TODO: missing section */

/* above needed for some versions of mpi.h in MPICH!! */
MPI_File MPI_File_f2c (MPI_Fint file);
MPI_Fint MPI_File_c2f (MPI_File file);

/* TODO: missing section */

/**************** BINDINGS FOR THE PROFILING INTERFACE ***************/

/* Section 9.2 */
int PMPI_File_open (MPI_Comm, const(char)*, int, MPI_Info, MPI_File*);
int PMPI_File_close (MPI_File*);
int PMPI_File_delete (const(char)*, MPI_Info);
int PMPI_File_set_size (MPI_File, MPI_Offset);
int PMPI_File_preallocate (MPI_File, MPI_Offset);
int PMPI_File_get_size (MPI_File, MPI_Offset*);
int PMPI_File_get_group (MPI_File, MPI_Group*);
int PMPI_File_get_amode (MPI_File, int*);
int PMPI_File_set_info (MPI_File, MPI_Info);
int PMPI_File_get_info (MPI_File, MPI_Info*);

/* Section 9.3 */
int PMPI_File_set_view (MPI_File, MPI_Offset, MPI_Datatype, MPI_Datatype, const(char)*, MPI_Info);
int PMPI_File_get_view (MPI_File, MPI_Offset*, MPI_Datatype*, MPI_Datatype*, char*);

/* Section 9.4.2 */
int PMPI_File_read_at (MPI_File, MPI_Offset, void*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_read_at_all (MPI_File, MPI_Offset, void*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_write_at (MPI_File, MPI_Offset, const(void)*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_write_at_all (MPI_File, MPI_Offset, const(void)*, int, MPI_Datatype, MPI_Status*);

/* nonblocking calls currently use MPIO_Request, because generalized
   requests not yet implemented. For the same reason, MPIO_Test and 
   MPIO_Wait are used to test and wait on nonblocking I/O requests */ 

int PMPI_File_iread_at (MPI_File, MPI_Offset, void*, int, MPI_Datatype, MPI_Request*);
int PMPI_File_iwrite_at (MPI_File, MPI_Offset, const(void)*, int, MPI_Datatype, MPI_Request*);

/* Section 9.4.3 */
int PMPI_File_read (MPI_File, void*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_read_all (MPI_File, void*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_write (MPI_File, const(void)*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_write_all (MPI_File, const(void)*, int, MPI_Datatype, MPI_Status*);

/* nonblocking calls currently use MPIO_Request, because generalized
   requests not yet implemented. For the same reason, MPIO_Test and 
   MPIO_Wait are used to test and wait on nonblocking I/O requests */ 

int PMPI_File_iread (MPI_File, void*, int, MPI_Datatype, MPI_Request*);
int PMPI_File_iwrite (MPI_File, const(void)*, int, MPI_Datatype, MPI_Request*);
int PMPI_File_seek (MPI_File, MPI_Offset, int);
int PMPI_File_get_position (MPI_File, MPI_Offset*);
int PMPI_File_get_byte_offset (MPI_File, MPI_Offset, MPI_Offset*);

/* Section 9.4.4 */
int PMPI_File_read_shared (MPI_File, void*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_write_shared (MPI_File, const(void)*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_iread_shared (MPI_File, void*, int, MPI_Datatype, MPI_Request*);
int PMPI_File_iwrite_shared (MPI_File, const(void)*, int, MPI_Datatype, MPI_Request*);
int PMPI_File_read_ordered (MPI_File, void*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_write_ordered (MPI_File, const(void)*, int, MPI_Datatype, MPI_Status*);
int PMPI_File_seek_shared (MPI_File, MPI_Offset, int);
int PMPI_File_get_position_shared (MPI_File, MPI_Offset*);

/* Section 9.4.5 */
int PMPI_File_read_at_all_begin (MPI_File, MPI_Offset, void*, int, MPI_Datatype);
int PMPI_File_read_at_all_end (MPI_File, void*, MPI_Status*);
int PMPI_File_write_at_all_begin (MPI_File, MPI_Offset, const(void)*, int, MPI_Datatype);
int PMPI_File_write_at_all_end (MPI_File, const(void)*, MPI_Status*);
int PMPI_File_read_all_begin (MPI_File, void*, int, MPI_Datatype);
int PMPI_File_read_all_end (MPI_File, void*, MPI_Status*);
int PMPI_File_write_all_begin (MPI_File, const(void)*, int, MPI_Datatype);
int PMPI_File_write_all_end (MPI_File, const(void)*, MPI_Status*);
int PMPI_File_read_ordered_begin (MPI_File, void*, int, MPI_Datatype);
int PMPI_File_read_ordered_end (MPI_File, void*, MPI_Status*);
int PMPI_File_write_ordered_begin (MPI_File, const(void)*, int, MPI_Datatype);
int PMPI_File_write_ordered_end (MPI_File, const(void)*, MPI_Status*);

/* Section 9.5.1 */
int PMPI_File_get_type_extent (MPI_File, MPI_Datatype, MPI_Aint*);

/* Section 9.5.3 */
int PMPI_Register_datarep (const(char)*, int function (void*, MPI_Datatype, int, void*, MPI_Offset, void*), int function (void*, MPI_Datatype, int, void*, MPI_Offset, void*), int function (MPI_Datatype, MPI_Aint*, void*), void*);

/* Section 9.6.1 */
int PMPI_File_set_atomicity (MPI_File, int);
int PMPI_File_get_atomicity (MPI_File, int*);
int PMPI_File_sync (MPI_File);

/* TODO: missing section */

/* Section 4.12.4 */
MPI_File PMPI_File_f2c (MPI_Fint);
MPI_Fint PMPI_File_c2f (MPI_File);

/* TODO: missing section */

