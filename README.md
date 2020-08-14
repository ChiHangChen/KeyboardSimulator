<p align="center">
  <img src="icon/icon.png" width = "128" height = "128" border="5">
  <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
</p>

# **Introduction to KeyboardSimulator**

![CRAN](https://img.shields.io/badge/CRAN-2.5.0-brightgreen)
![CRAN\_Status\_Badge](https://cranlogs.r-pkg.org/badges/grand-total/KeyboardSimulator)

`KeyboardSimulator` is a package for R language that make users simulate keyboard event, cursor movement and mouse click with simple R function.

This package provide 6 functions which are developed in C++:

  - `keybd.press()` Simulate keyboard key presses. Multiple keys can be pressed simultaneously by using `+` as separator.
  - `keybd.release()` Simulate the release of keyboard keys held by `keybd.press`.
  - `keybd.type_string()` Type a string with simulated keyboard input.
  - `mouse.click()` Simulate left and right button of mouse clicks.
  - `mouse.release()` Simulate the release of mouse button held by `mouse.click`.
  - `mouse.get_cursor()` Get current cursor coordinate of screen.
  - `mouse.move()` Move cursor to specific coordinate of screen.
  
The supported keys are listed in `keyboard_value`.

***

## **FAQ**

### Does `KeyboardSimulator` support operating systems other than Windows?

No, `KeyboardSimulator` is built on top of the [Windows API](https://docs.microsoft.com/en-us/windows/desktop/api/index) and is not compatible with other operating systems.

### This package doesn't work on my computer! How can I make it work?

Open a [GitHub](https://github.com/ChiHangChen/KeyboardSimulator) issue and let us know what version of Windows you are using and what keyboard and mouse hardware you have connected.

***

## **Package Setup**

```r
install.packages("KeyboardSimulator")
library(KeyboardSimulator)
```
or
```r
if (!require("devtools")) install.packages("devtools")
devtools::install_github("ChiHangChen/KeyboardSimulator")
library(KeyboardSimulator)
```

***

## **Examples**

#### **Simulate keyboard event**

* **Press single key**

```r
keybd.press("Enter")
```

* **Press multiple keys with `+` as seperator**

```r
keybd.press("Alt+f4")
```

* **Hold keys with argument `hold=TRUE` and use `keybd.release` to release the held key**

```r
keybd.press("Alt", hold = TRUE)
keybd.press('Tab')
keybd.release('Alt')
```


#### **Simulate mouse event**

* **Get current location of cursor**

```r
mouse.get_cursor()
```

```
# Return the x,y coordinate of screen
[1] 960 540
```

* **Press mouse button**

```r
mouse.click()
mouse.click("right")
```

* **Move cursor to the center of screen on 1080FHD monitor**

```r
mouse.move(960, 540)
```

* **Move cursor to the center of screen on 1080FHD monitor within 3 seconds**

```r
mouse.move(960, 540, duration=3)
```

* **Drag an item to center of screen**

```r
mouse.click(button = "left", hold = TRUE)
mouse.move(960, 540)
mouse.release()
```

***

## **Developers**

#### **Dependencies**

It is highly recommended that you use the [RStudio IDE](https://www.rstudio.com/products/RStudio/) to develop this package. In addition to an [R installation](https://cran.r-project.org/bin/windows/base/), you'll also need to [install Rtools](https://cran.r-project.org/bin/windows/Rtools/) and a TeX distribution. [TeX Live](https://tug.org/texlive/) is a comprehensive distribution that seems to work well.

Once you have cloned this repository, you'll need to download the build package dependencies. These dependencies are managed with `packrat` and can be restored by running

```r
if (!require(packrat)) install.packages("packrat")
packrat::on()
packrat::restore()
```

***

## **Documentation**

The `roxygen2` R package is used to manage `KeyboardSimulator`'s documentation. Do not edit any of the files that have a warning comment at the top about manually editing those files!

You can regenerate package documentation with the RStudio shortcut Ctrl+Shift+Enter, or by running

```r
roxygen2::roxygenize()
```

The project is set up to do this whenever building and testing the package.

***

## **Other**

* Put any C/C++/Fortran code in 'src'.
* See [_Writing R Extensions_](https://cran.r-project.org/doc/manuals/R-exts.html) for more information.
