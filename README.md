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


