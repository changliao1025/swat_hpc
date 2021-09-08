# SWAT-HPC
Compiling SWAT model on HPC

This is a step-by-step instruction to build the SWAT model for computational simulation on HPC.

First, overview of the SWAT (Soil and Water Assessment Tool) model can be found at 

http://swat.tamu.edu/.

By HPC (High Performance Computing), I mainly mean Linux cluster.

This intruction was built based on a few other resources, namely,

https://github.com/crazyzlj/SWAT

and 

https://github.com/mlt/swat/wiki/Building-SWAT-from-this-repository

For people who have completely no background in neither of this topic, I will try my best to tell the story straight enough so you should be able to follow. I will provide both official links and easy-to-digest links for your convenience.

1. SWAT model is a comprehensive computer model to simulate various soil and water dynamics.

2. SWAT source code is mainly written in Fortran and you can obtain a copy from the official website. More information of Fortran is introduced here:

https://en.wikipedia.org/wiki/Fortran

You may prefer to read this:

https://www.kidscodecs.com/fortran/


3. In order to build/compile the SWAT source code under Linux, we need a compiler/linker, which is contained within GCC in this instruction. You can find more information of GCC from here 

https://gcc.gnu.org/

You may want to read the shorter one:

https://www.computerhope.com/jargon/g/gcc.htm

This is very different with Python or Matlab because

https://stackoverflow.com/questions/3265357/compiled-vs-interpreted-languages

4. Because there are many Fortran source code, we need a makefile to improve efficiency. You can also find more information of makefile from here:

https://www.gnu.org/software/make/manual/make.html

You can read a shorter example here:

https://www.tutorialspoint.com/makefile/why_makefile.htm

5. It is also not easy to write a makefile when you have a large project. That is why we use CMake.

https://prateekvjoshi.com/2014/02/01/cmake-vs-make/

I do not use CMake very often but I found it very powerful for sure.
The offical documentation of CMake can be found at 

https://cmake.org/documentation/.

But I prefer to introduce you a much simple exmaple of it at 

http://derekmolloy.ie/hello-world-introductions-to-cmake/

6. Let's start with the easy one, based on the makefile provided from:

https://github.com/crazyzlj/SWAT/blob/master/posts_by_zhiqiang/Makefile

Environmental settings:
make --version
GNU Make 3.81
Copyright (C) 2006  Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

This program built for x86_64-redhat-linux-gnu

gfortran --version
GNU Fortran (GCC) 6.1.0
Copyright (C) 2016 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

You may use lower version of gfortran, but it may cause problem if lower than 4.4.

Very likely you will receive several errors and warnings including:

a. Error: Expected a right parenthesis in expression at (1)

b. Error: Unclassifiable statement at (1)

c. Error: Line truncated at (1) [-Werror=line-truncation]

These errors are mainly caused by several reasons:

a. Poor programming practices in length control and compiler will complain whenever a long line code is detected. To fix this type of error, you can either break long line into pieces or use compiler flag (not recommended).

b. Dependency relationship not well defined in makefile. The fix is to remove unnecessary dependency in source code (comment out the "include modparm.f" line in the main.f file).

The working version of makefile is uploaded.

7. Now let's build it with CMake. I have provided a simplest CMakeLists file for this task, which means only essential variables are defined. 
CMake supports "out-of-source" feature, which makes it very handy if you want to separate the source code with other resource.
Details can be found here:

https://cmake.org/Wiki/CMake_FAQ#Out-of-source_build_trees

But the relative path will be considered. An easy solution is to use the {CMAKE_CURRENT_SOURCE_DIR} variable.

To fix the same long length constraint, I used the compiling flags directly.

Environmental settings:
cmake --version
cmake version 2.8.12.2

The working version of the CMakeLists file is uploaded.

I have tested the source code under both MacOX 10.13.6 and Linux with GNU. If you have difficulty in compling the program, please send me an email.
Most likely you will have to specify the compiler if cmake complains. You can try this:
https://cmake.org/pipermail/cmake/2006-October/011638.html
You can also add "set(CMAKE_VERBOSE_MAKEFILE ON)" into the CMakeLists.txt to obatin more compiling information.

If you have question, please send email to changliao.climate@gmail.com
