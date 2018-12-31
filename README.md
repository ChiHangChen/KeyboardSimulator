# KeyboardSimulator

Control your keyboard and mouse with R code by simulating key presses and mouse clicks. The input simulation is implemented with the Windows API.

# FAQ

**Q: Does `KeyboardSimulator` support operating systems other than Windows?**

A: No, `KeyboardSimulator` is built on top of the [Windows API](https://docs.microsoft.com/en-us/windows/desktop/api/index) and is not compatible with other operating systems.

# Developers

### Dependencies

It is highly recommended that you use the [RStudio IDE](https://www.rstudio.com/products/RStudio/) to develop this package. In addition to an [R installation](https://cran.r-project.org/bin/windows/base/), you'll also need to [install Rtools](https://cran.r-project.org/bin/windows/Rtools/) and a TeX distribution. [TeX Live](https://tug.org/texlive/) is a comprehensive distribution that seems to work well.

Once you have cloned this repository, you'll need to download the build package dependencies. These dependencies are managed with `packrat` and can be restored by running

```
if (!require(packrat)) install.packages("packrat")
packrat::on()
packrat::restore()
```

### Documentation

The `roxygen2` R package is used to manage `KeyboardSimulator`'s documentation. Do not edit any of the files that have a warning comment at the top about manually editing those files!

You can regenerate package documentation with the RStudio shortcut Ctrl+Shift+Enter, or by running

```
roxygen2::roxygenize()
```

The project is set up to do this whenever building and testing the package.

### Other

* Put any C/C++/Fortran code in 'src'.
* See [_Writing R Extensions_](https://cran.r-project.org/doc/manuals/R-exts.html) for more information.

