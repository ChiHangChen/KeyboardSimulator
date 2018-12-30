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
  list(button = "a",         virt_code = 0x41),
  list(button = "b",         virt_code = 0x42),
  list(button = "c",         virt_code = 0x43),
  list(button = "d",         virt_code = 0x44),
  list(button = "e",         virt_code = 0x45),
  list(button = "f",         virt_code = 0x46),
  list(button = "g",         virt_code = 0x47),
  list(button = "h",         virt_code = 0x48),
  list(button = "i",         virt_code = 0x49),
  list(button = "j",         virt_code = 0x4A),
  list(button = "k",         virt_code = 0x4B),
  list(button = "l",         virt_code = 0x4C),
  list(button = "m",         virt_code = 0x4D),
  list(button = "n",         virt_code = 0x4E),
  list(button = "o",         virt_code = 0x4F),
  list(button = "p",         virt_code = 0x50),
  list(button = "q",         virt_code = 0x51),
  list(button = "r",         virt_code = 0x52),
  list(button = "s",         virt_code = 0x53),
  list(button = "t",         virt_code = 0x54),
  list(button = "u",         virt_code = 0x55),
  list(button = "v",         virt_code = 0x56),
  list(button = "w",         virt_code = 0x57),
  list(button = "x",         virt_code = 0x58),
  list(button = "y",         virt_code = 0x59),
  list(button = "z",         virt_code = 0x5A),
  list(button = "0",         virt_code = 0x30),
  list(button = "1",         virt_code = 0x31),
  list(button = "2",         virt_code = 0x32),
  list(button = "3",         virt_code = 0x33),
  list(button = "4",         virt_code = 0x34),
  list(button = "5",         virt_code = 0x35),
  list(button = "6",         virt_code = 0x36),
  list(button = "7",         virt_code = 0x37),
  list(button = "8",         virt_code = 0x38),
  list(button = "9",         virt_code = 0x39),
  list(button = "num0",      virt_code = 0x60),
  list(button = "num1",      virt_code = 0x61),
  list(button = "num2",      virt_code = 0x62),
  list(button = "num3",      virt_code = 0x63),
  list(button = "num4",      virt_code = 0x64),
  list(button = "num5",      virt_code = 0x65),
  list(button = "num6",      virt_code = 0x66),
  list(button = "num7",      virt_code = 0x67),
  list(button = "num8",      virt_code = 0x68),
  list(button = "num9",      virt_code = 0x69),
  list(button = "f1",        virt_code = 0x70),
  list(button = "f2",        virt_code = 0x71),
  list(button = "f3",        virt_code = 0x72),
  list(button = "f4",        virt_code = 0x73),
  list(button = "f5",        virt_code = 0x74),
  list(button = "f6",        virt_code = 0x75),
  list(button = "f7",        virt_code = 0x76),
  list(button = "f8",        virt_code = 0x77),
  list(button = "f9",        virt_code = 0x78),
  list(button = "f10",       virt_code = 0x79),
  list(button = "f11",       virt_code = 0x7A),
  list(button = "f12",       virt_code = 0x7B),
  list(button = "backspace", virt_code = 0x08),
  list(button = "tab",       virt_code = 0x09),
  list(button = "enter",     virt_code = 0x0D),
  list(button = "shift",     virt_code = 0x10),
  list(button = "ctrl",      virt_code = 0x11),
  list(button = "alt",       virt_code = 0x12),
  list(button = "capslock",  virt_code = 0x14),
  list(button = "esc",       virt_code = 0x1B),
  list(button = "pageup",    virt_code = 0x21),
  list(button = "pagedown",  virt_code = 0x22),
  list(button = "end",       virt_code = 0x23),
  list(button = "home",      virt_code = 0x24),
  list(button = "left",      virt_code = 0x25),
  list(button = "up",        virt_code = 0x26),
  list(button = "right",     virt_code = 0x27),
  list(button = "down",      virt_code = 0x28),
  list(button = "insert",    virt_code = 0x2D),
  list(button = "space",     virt_code = 0x20),
  list(button = "del",       virt_code = 0x2E),
  list(button = "numlock",   virt_code = 0x90),
  list(button = "win",       virt_code = 0x5B)
)

# Convert to a data.frame
keyboard_value <- do.call(rbind, args = lapply(keyboard_value, FUN = data.frame))

# Code to get the itemized key list for documentation purposes.
# cat(paste0("#'  \\item{", levels(keyboard_value$button), "}", collapse = "\n"))
