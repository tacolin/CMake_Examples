# CMake Examples

___
## Example List


| Example   | Descriptions |
|-----------|--------------|
| hello-1   | Simplest Hello world |
| hello-2   | Set install path |
| hello-3   | Set include path |
| hello-4   | Put source files and header files in different folders |
| project-1 | Combine executable, static library, and shared library in one project |
| project-2 | Modify project-1 to be like a repo / trunk system |
| project-3 | Modify project-2 by using "header file inclusion" |
| project-4 | Add kernel module compiling |
| project-5 | Modify some kernel module compiling method ... (maybe ?) |


___
## hello-1 ~ hello-4

### Make

    $ cd build/
    $ cmake ../
    $ make

### Run

    $ ./hello-output

### Clean

    $ cd build/
    $ rm -rf *


___
## project-1 ~ project-3

### Make

    $ sh make.sh

### Run

    $ cd output/
    $ ./taco
    $ ./york

### Clean

    $ sh clean.sh


___
## project-4 ~ project-5

### Make

    $ sh make.sh

### Run

    $ cd output/
    $ ./taco
    $ cd module/
    $ sudo insmod york.ko
    $ sudo rmmod york

### Clean

    $ sh clean.sh



