
# Keyboard ---------------------------------------------------------------

#' Simulate Key Press
#'
#' Simulate keyboard key presses. Multiple keys can be pressed simultaneously by using \code{+} as separator (see Examples). See \code{\link[KeyboardSimulator]{keyboard_value}} for supported keys.
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
#' keybd.press("a")
#'
#' # press multiple keys
#' keybd.press("Alt+F4")
#'
#' # press multiple keys using hold
#' keybd.press("Alt", hold = TRUE)
#' keybd.press("F4")
#' keybd.release("Alt")
#' }
keybd.press <- function(button, hold = FALSE) {
  if (!is.character(button)) stop("Argument 'button' must be a character string.")
  raw_button_str <- strsplit(button, "\\+")[[1]]
  button_str <- c()
  for (i in raw_button_str) {
    if (i %in% keyboard_value$button && keyboard_value[keyboard_value$button == i, "shift"]) {
      warning(paste0("Button '", i, "' will be treated as lowercase. Use 'keybd.type_string' for uppercase keyboard simulation."))
    } else if (!tolower(i) %in% keyboard_value$button) {
      stop(paste0("The 'button' value '", i, "' is not supported. Available keys are : ", paste0(as.character(keyboard_value$button), collapse = " ")))
    }
    button_str <- c(button_str, tolower(i))
  }
  kv <- keyboard_value[match(button_str, keyboard_value$button), ]
  if (hold) {
    press_c(kv$virt_code, kv$scan_code, kv$prefix_byte)
  } else {
    press_and_release_c(kv$virt_code, kv$scan_code, kv$prefix_byte)
  }
}

#' Simulate Key Release
#'
#' Simulate the release of keyboard keys held by \code{\link[KeyboardSimulator]{keybd.press}}. Multiple keys can be released simultaneously by using a \code{+} separator (see Examples). See \code{\link[KeyboardSimulator]{keyboard_value}} for supported keys.
#'
#' @param button character. The key release to simulate (not case sensitive).
#' @export
#' @seealso \code{\link[KeyboardSimulator]{keybd.press}}
#' @examples
#' \dontrun{
#'
#' # Move to the third working window
#' keybd.press("Alt", hold = TRUE)
#' keybd.press("Tab")
#' Sys.sleep(0.1)
#' keybd.press("Tab")
#' keybd.release("Alt")
#' }
keybd.release <- function(button) {
  if (!is.character(button)) stop("Argument 'button' must be a character string.")
  raw_button_str <- strsplit(button, "\\+")[[1]]
  button_str <- c()
  for (i in raw_button_str) {
    if (i %in% keyboard_value$button && keyboard_value[keyboard_value$button == i, "shift"]) {
      warning(paste0("Button '", i, "' will be treated as lowercase. Use 'keybd.type_string' for uppercase keyboard simulation."))
    } else if (!tolower(i) %in% keyboard_value$button) {
      stop(paste0("The 'button' value '", i, "' is not supported. Available keys are : ", paste0(as.character(keyboard_value$button), collapse = " ")))
    }
    button_str <- c(button_str, tolower(i))
  }
  kv <- keyboard_value[match(button_str, keyboard_value$button), ]
  release_c(kv$virt_code, kv$scan_code, kv$prefix_byte)
}

#' Type a raw string
#'
#' Type a raw string base on a given string.
#'
#' @param string character. The string expected to output (case sensitive).
#' @export
#' @examples
#' \dontrun{
#'
#' # Type 'Hello world!'
#' keybd.type_string("Hello world!")
#' }
keybd.type_string <- function(string) {
  shift_key_row <- keyboard_value[keyboard_value$button == "shift", ]
  if (class(string) != "character") stop("Argument 'string' must be a character string.")
  button_str <- strsplit(string, "")[[1]]
  button_check <- !button_str %in% keyboard_value$button
  if (any(button_check)) {
    stop(paste0("The 'button' value '", button_str[button_check][1], "' is not supported. Available keys are : ", paste0(as.character(keyboard_value$button), collapse = " ")))
  }
  kv <- keyboard_value[match(button_str, keyboard_value$button), ]
  for (i in seq_len(nrow(kv))) {
    if (kv[i, "shift"]) {
      combine_df <- rbind(shift_key_row, kv[i, ])
      press_and_release_c(combine_df$virt_code, combine_df$scan_code, combine_df$prefix_byte)
    } else {
      press_and_release_c(kv[i, "virt_code"], kv[i, "scan_code"], kv[i, "prefix_byte"])
    }
  }
}

# Mouse -------------------------------------------------------------------

#' Simulate Mouse Clicks
#'
#' Simulate left, right, and middle mouse clicks.
#'
#' @param button character. Allowed values are \code{"left"}, \code{"right"}, and \code{"middle"}.
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
  } else if (btn == "middle") {
    if (hold) {
      mouse_middle_hold()
    } else {
      mouse_middle_click()
    }
  } else {
    stop("Argument 'button' should be one of 'left', 'right', or 'middle'.")
  }
}

#' Simulate Mouse Click Release
#'
#' Simulate the release of mouse button held by \code{\link[KeyboardSimulator]{mouse.click}}.
#'
#' @param button character. Allowed values are \code{"left"}, \code{"right"}, and \code{"middle"}.
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
  } else if (btn == "middle") {
    mouse_middle_release()
  } else {
    stop("Argument 'button' should be one of 'left', 'right', or 'middle'.")
  }
}

#' Move Cursor to Specific Location
#'
#' Move cursor to specific coordinate of the screen.
#'
#' @param x numeric. X-axis of screen.
#' @param y numeric. Y-axis of screen.
#' @param duration numeric. Cursor movement time in seconds, there might be some delay on different computer.
#' @param step_ratio numeric. Ratio of total distance in each step, only available when \code{duration} is not \code{NA}.
#' @export
#' @examples
#' \dontrun{
#'
#' # Move cursor to middle of screen in 1080FHD monitor
#' mouse.move(x = 960, y = 540)
#'
#' # Move cursor to middle of screen in 1080FHD monitor within 3 seconds
#' mouse.move(x = 960, y = 540, duration = 3)
#' }
mouse.move <- function(x, y, duration = NA, step_ratio = 0.01) {
  if (class(x) != "numeric" | class(y) != "numeric") stop("Argument must be numeric")
  if (!is.na(duration)) {
    if (!is.numeric(duration)) {
      stop("Argument must be numeric")
    } else if (class(step_ratio) != "numeric") {
      stop("Argument must be numeric")
    } else {
      time_seg <- duration * step_ratio
      initial_point <- get_cursor()

      if (x == initial_point[1] & y == initial_point[2]) {
      } else {
        if (x != initial_point[1]) {
          xaxis_path <- seq(initial_point[1], x, by = (x - initial_point[1]) * step_ratio)[-1]
        }
        if (y != initial_point[2]) {
          yaxis_path <- seq(initial_point[2], y, by = (y - initial_point[2]) * step_ratio)[-1]
        }
        if (x == initial_point[1]) {
          xaxis_path <- rep(initial_point[1], length(yaxis_path))
        }
        if (y == initial_point[2]) {
          yaxis_path <- rep(initial_point[2], length(xaxis_path))
        }
        MouseMove_loop(xaxis_path, yaxis_path, time_seg)
      }
    }
  } else {
    MouseMove(x, y)
  }
}

#' Get Current Cursor Coordinate
#'
#' Get current cursor coordinate of screen .
#'
#' @export
#' @examples
#' \dontrun{
#'
#' mouse.get_cursor()
#' }
mouse.get_cursor <- function() {
  get_cursor()
}
