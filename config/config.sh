#
export NTQC_TOP=/home/mikami/ntchem/ntchem-mini-develop
export HOSTTYPE=linux64_mpiifort_omp
export LAPACK=-mkl
export BLAS=-mkl
export ATLAS=
export SCRATCH=/home/mikami/scr/ntchem
export PARALLEL=mpiomp
#
export TARGET=LINUX64
unset USE_MPI

# if you want to use MPICH, you can set the environmental variables as
# follos (see ./GA/README)
# 
# export MPI_USE=yes
# export MPI_INCLUDE=/usr/include
# export MPI_LIB=/usr/lib
# export LIBMPI=-lmpi

export LARGE_FILES=yes

