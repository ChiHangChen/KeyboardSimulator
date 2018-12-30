#' keyboard_value
#'
#' List of supported keyboard keys, along with their virtual-key and hardware scan codes.
#' 
#' Supported keys:
#' 
#' \itemize{
#'  \item{a}
#'  \item{b}
#'  \item{c}
#'  \item{d}
#'  \item{e}
#'  \item{f}
#'  \item{g}
#'  \item{h}
#'  \item{i}
#'  \item{j}
#'  \item{k}
#'  \item{l}
#'  \item{m}
#'  \item{n}
#'  \item{o}
#'  \item{p}
#'  \item{q}
#'  \item{r}
#'  \item{s}
#'  \item{t}
#'  \item{u}
#'  \item{v}
#'  \item{w}
#'  \item{x}
#'  \item{y}
#'  \item{z}
#'  \item{0}
#'  \item{1}
#'  \item{2}
#'  \item{3}
#'  \item{4}
#'  \item{5}
#'  \item{6}
#'  \item{7}
#'  \item{8}
#'  \item{9}
#'  \item{num0}
#'  \item{num1}
#'  \item{num2}
#'  \item{num3}
#'  \item{num4}
#'  \item{num5}
#'  \item{num6}
#'  \item{num7}
#'  \item{num8}
#'  \item{num9}
#'  \item{f1}
#'  \item{f2}
#'  \item{f3}
#'  \item{f4}
#'  \item{f5}
#'  \item{f6}
#'  \item{f7}
#'  \item{f8}
#'  \item{f9}
#'  \item{f10}
#'  \item{f11}
#'  \item{f12}
#'  \item{backspace}
#'  \item{tab}
#'  \item{enter}
#'  \item{shift}
#'  \item{ctrl}
#'  \item{alt}
#'  \item{capslock}
#'  \item{esc}
#'  \item{pageup}
#'  \item{pagedown}
#'  \item{end}
#'  \item{home}
#'  \item{left}
#'  \item{up}
#'  \item{right}
#'  \item{down}
#'  \item{insert}
#'  \item{space}
#'  \item{del}
#'  \item{numlock}
#'  \item{win}
#' }
#'
#' @docType data
#' @export
#' @keywords data
# Organizing this as a list makes it easier to modify
keyboard_value <- list(
  list(button = "a", value = 65L),
  list(button = "b", value = 66L),
  list(button = "c", value = 67L),
  list(button = "d", value = 68L),
  list(button = "e", value = 69L),
  list(button = "f", value = 70L),
  list(button = "g", value = 71L),
  list(button = "h", value = 72L),
  list(button = "i", value = 73L),
  list(button = "j", value = 74L),
  list(button = "k", value = 75L),
  list(button = "l", value = 76L),
  list(button = "m", value = 77L),
  list(button = "n", value = 78L),
  list(button = "o", value = 79L),
  list(button = "p", value = 80L),
  list(button = "q", value = 81L),
  list(button = "r", value = 82L),
  list(button = "s", value = 83L),
  list(button = "t", value = 84L),
  list(button = "u", value = 85L),
  list(button = "v", value = 86L),
  list(button = "w", value = 87L),
  list(button = "x", value = 88L),
  list(button = "y", value = 89L),
  list(button = "z", value = 90L),
  list(button = "0", value = 48L),
  list(button = "1", value = 49L),
  list(button = "2", value = 50L),
  list(button = "3", value = 51L),
  list(button = "4", value = 52L),
  list(button = "5", value = 53L),
  list(button = "6", value = 54L),
  list(button = "7", value = 55L),
  list(button = "8", value = 56L),
  list(button = "9", value = 57L),
  list(button = "num0", value = 96L),
  list(button = "num1", value = 97L),
  list(button = "num2", value = 98L),
  list(button = "num3", value = 99L),
  list(button = "num4", value = 100L),
  list(button = "num5", value = 101L),
  list(button = "num6", value = 102L),
  list(button = "num7", value = 103L),
  list(button = "num8", value = 104L),
  list(button = "num9", value = 105L),
  list(button = "f1", value = 112L),
  list(button = "f2", value = 113L),
  list(button = "f3", value = 114L),
  list(button = "f4", value = 115L),
  list(button = "f5", value = 116L),
  list(button = "f6", value = 117L),
  list(button = "f7", value = 118L),
  list(button = "f8", value = 119L),
  list(button = "f9", value = 120L),
  list(button = "f10", value = 121L),
  list(button = "f11", value = 122L),
  list(button = "f12", value = 123L),
  list(button = "backspace", value = 8L),
  list(button = "tab", value = 9L),
  list(button = "enter", value = 13L),
  list(button = "shift", value = 16L),
  list(button = "ctrl", value = 17L),
  list(button = "alt", value = 18L),
  list(button = "capslock", value = 20L),
  list(button = "esc", value = 27L),
  list(button = "pageup", value = 33L),
  list(button = "pagedown", value = 34L),
  list(button = "end", value = 35L),
  list(button = "home", value = 36L),
  list(button = "left", value = 37L),
  list(button = "up", value = 38L),
  list(button = "right", value = 39L),
  list(button = "down", value = 40L),
  list(button = "insert", value = 45L),
  list(button = "space", value = 32L),
  list(button = "del", value = 46L),
  list(button = "numlock", value = 144L),
  list(button = "win", value = 91L)
)

# Convert to a data.frame
keyboard_value <- do.call(rbind, args = lapply(keyboard_value, FUN = data.frame))

# Code to get the itemized key list for documentation purposes.
# cat(paste0("#'  \\item{", levels(keyboard_value$button), "}", collapse = "\n"))
