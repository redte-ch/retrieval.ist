# cython: language_level=3
# distutils: language=c++

from cpython cimport bool
from libcpp.map cimport map
from libcpp.string cimport string

ctypedef map[string, int] Cache_t


cdef public class Cache [object CyCache, type CyCache_t]:
    cpdef public str path
    cpdef public Cache_t cache
    cpdef void load(self)
    cpdef void save(self)
    cpdef int get(self, string key)
    cpdef void set(self, string key, int value)
    cpdef bool has_key(self, string key)
