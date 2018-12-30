# KeyboardSimulator

Control your keyboard and mouse with R code by simulating key presses and mouse clicks. The input simulation is implemented with the Windows API.

# FAQ

**Q: Does `KeyboardSimulator` support operating systems other than Windows?**

A: No, `KeyboardSimulator` is built on top of the [Windows API](https://docs.microsoft.com/en-us/windows/desktop/api/index) and is not compatible with other operating systems.

# Developers

* Edit the help file skeletons in 'man', possibly combining help files for multiple functions.
* Edit the exports in 'NAMESPACE', and add necessary imports.
* Put any C/C++/Fortran code in 'src'.
* If you have compiled code, add a useDynLib() directive to 'NAMESPACE'.
* Run R CMD build to build the package tarball.
* Run R CMD check to check the package tarball.

Read "Writing R Extensions" for more information.
