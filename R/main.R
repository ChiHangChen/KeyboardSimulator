
# Keyboard ---------------------------------------------------------------

#' Simulate Key Press
#' 
#' Simulates keyboard key presses. Multiple keys can be pressed simultaneously by using a \code{+} separator (see Examples). See \code{\link[KeyboardSimulator]{keyboard_value}} for supported keys.
#' 
#' @param button character. The key press to simulate (not case sensitive).
#' @param hold logical. Whether the key should be held down. If \code{TRUE}, the key can 
#' be released by pressing the phsical key on the keyboard or by using the \code{\link[KeyboardSimulator]{keybd.release}} function.
#' @export
#' @seealso \code{\link[KeyboardSimulator]{keybd.release}}
#' @examples
#' \dontrun{
#' 
#' # press one key
#' keybd.press('a')
#' 
#' # press multiple keys
#' keybd.press('Alt+F4')
#' 
#' # press multiple keys using hold
#' keybd.press('Alt', hold = TRUE)
#' keybd.press('F4')
#' keybd.release('Alt')
#' }
keybd.press <- function(button, hold = FALSE) {
  
  if (!is.character(button)) {
    stop("Argument 'button' must be a character string.")
  }
  
  button_str <- sapply(strsplit(button, "\\+")[[1]], FUN = tolower)
  button_check <- !button_str %in% keyboard_value$button
  if (any(button_check)) {
    stop(paste0("The 'button' value '", button_str[button_check][1], "' is not supported. Available keys are : ", paste0(as.character(keyboard_value$button), collapse = " ")))
  }
  
  idx <- match(button_str, keyboard_value$button)
  button_virt_code <- keyboard_value[idx, ]$virt_code
  button_scan_code <- keyboard_value[idx, ]$scan_code
  button_scan_pref <- keyboard_value[idx, ]$prefix_byte
  if (hold) {
    press_c(as.vector(button_virt_code), as.vector(button_scan_code), as.vector(button_scan_pref))
  } else {
    press_and_release_c(as.vector(button_virt_code), as.vector(button_scan_code), as.vector(button_scan_pref))
  }
  
}

#' Simulate Key Release
#' 
#' Simulates the release of keyboard keys held by \code{\link[KeyboardSimulator]{keybd.press}}. Multiple keys can be released simultaneously by using a \code{+} separator (see Examples). See \code{\link[KeyboardSimulator]{keyboard_value}} for supported keys.
#' 
#' @param button character. The key release to simulate (not case sensitive).
#' @export
#' @seealso \code{\link[KeyboardSimulator]{keybd.press}}
#' @examples
#' \dontrun{
#' 
#' # Move to the third working window
#' keybd.press('Alt', hold = TRUE)
#' keybd.press('Tab')
#' Sys.sleep(0.1)
#' keybd.press('Tab')
#' keybd.release('Alt')
#' }
keybd.release <- function(button) {
  
  if (!is.character(button)) {
    stop("Argument 'button' must be a character string.")
  }
  
  button_str <- sapply(strsplit(button, "\\+")[[1]], FUN = tolower)
  button_check <- !button_str %in% keyboard_value$button
  if (any(button_check)) {
    stop(paste0("The 'button' value '", button_str[button_check][1], "' is not supported. Available keys are : ", paste0(as.character(keyboard_value$button), collapse = " ")))
  }
  
  idx <- match(button_str, keyboard_value$button)
  button_virt_code <- keyboard_value[idx, ]$virt_code
  button_scan_code <- keyboard_value[idx, ]$scan_code
  button_scan_pref <- keyboard_value[idx, ]$prefix_byte
  release_c(as.vector(button_virt_code), as.vector(button_scan_code), as.vector(button_scan_pref))
  
}

# Mouse -------------------------------------------------------------------

#' Simulate Mouse Clicks
#' 
#' Simulate left and right mouse clicks.
#' 
#' @param button character. Allowed values are "\code{left}" and "\code{right}".
#' @param hold logical. Whether the button should be held down.
#' @export
#' @seealso \code{\link[KeyboardSimulator]{mouse.release}}
#' @examples
#' \dontrun{
#' 
#' # left mouse click
#' mouse.click(button = "left")
#' 
#' # left mouse click and hold
#' mouse.click(button = "left", hold = TRUE)
#' }
mouse.click <- function(button = "left", hold = FALSE) {
  
  btn <- tolower(button)
  if (btn == "left") {
    if (hold) {
      mouse_left_hold()
    } else {
      mouse_left_click()
    }
  } else if (btn == "right") {
    if (hold) {
      mouse_right_hold()
    } else {
      mouse_right_click()
    }
  } else {
    stop("Argument 'button' should be either 'left' or 'right'.")
  }
  
}

#' Simulate Mouse Click Release
#' 
#' Simulates the release of mouse clicks held by \code{\link[KeyboardSimulator]{mouse.click}}.
#' 
#' @param button character. Allowed values are "\code{left}" and "\code{right}".
#' @export
#' @seealso \code{\link[KeyboardSimulator]{mouse.click}}
#' @examples
#' \dontrun{
#' 
#' # right mouse click and hold
#' mouse.click(button = "right", hold = TRUE)
#' 
#' # release right click
#' mouse.release(button = "right")
#' }
mouse.release <- function(button = "left") {
  
  btn <- tolower(button)
  if (btn == "left") {
    mouse_left_release()
  } else if (btn == "right") {
    mouse_right_release()
  } else {
    stop("Argument 'button' should be either 'left' or 'right'.")
  }
  
}
