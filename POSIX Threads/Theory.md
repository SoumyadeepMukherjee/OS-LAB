### Implementation of Threads in LINUX :

In shared memory multiprocessor architectures, threads can be used to implement parallelism. An application typically is implemented as a separate process with several threads of control. Historically, hardware vendors have implemented their own proprietary versions of threads, making portability a concern for software developers. For UNIX systems, a standardized C language threads programming interface has been specified by the IEEE POSIX 1003.1c standard. Implementations that adhere to this
standard are referred to as POSIX threads, or Pthreads.

Pthreads are defined as a set of C language programming types and procedure calls, implemented with a
pthread.h header/include file and a thread library - though this library may be part of another library, such
as libc, in some implementations.

Pthreads are created using `pthread_create()` .

```
#include <pthread.h>
int pthread_create (pthread_t *thread_id, const pthread_attr_t *attributes,
void *(*thread_function)(void *), void *arguments);
```

This function creates a new thread. pthread_t handles the new thread. Attributes allows you to fine tune
various parameters, to use the defaults pass NULL. thread_function is the function the new thread is
executing, the thread will terminate when this function terminates, or it is explicitly killed. Arguments is a
void * pointer which is passed as the only argument to the thread_function.

Pthreads terminate when the function returns, or the thread can call `pthread_exit()` which
terminates the calling thread explicitly.

`int pthread_exit (void *status);`

Status is the return value of the thread. (Note a thread_function returns a void * , so calling return (void * )
is the equivalent of this function.

One Thread can wait on the termination of another by using `pthread_join()` .

`int pthread_join (pthread_t thread, void ** status_ptr);`

The exit status is returned in status_ptr.
A thread can get its own thread id, by calling `pthread_self()`

`pthread_t pthread_self ();`

Two thread id's can be compared using `pthread_equal()`

`int pthread (pthread_t t1, pthread_t t2);`

Returns zero if the threads are different threads, non-zero otherwise.
