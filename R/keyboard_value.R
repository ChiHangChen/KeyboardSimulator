#' keyboard_value
#'
#' List of supported keyboard keys, along with their virtual-key and hardware scan codes. A field indicating whether the key is an "extended key" with a \code{0xE0} prefix byte is also included to differentiate between duplicate keys on the keyboard and num pad. For example, while the \code{1} key usually behaves the same as the \code{1} key on the num pad, some applications see these as two distinct keys.
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
#'  \item{A}
#'  \item{B}
#'  \item{C}
#'  \item{D}
#'  \item{E}
#'  \item{F}
#'  \item{G}
#'  \item{H}
#'  \item{I}
#'  \item{J}
#'  \item{K}
#'  \item{L}
#'  \item{M}
#'  \item{N}
#'  \item{O}
#'  \item{P}
#'  \item{Q}
#'  \item{R}
#'  \item{S}
#'  \item{T}
#'  \item{U}
#'  \item{V}
#'  \item{W}
#'  \item{X}
#'  \item{Y}
#'  \item{Z}
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
#'  \item{`}
#'  \item{~}
#'  \item{!}
#'  \item{@}
#'  \item{#}
#'  \item{$}
#'  \item{%}
#'  \item{^}
#'  \item{&}
#'  \item{*}
#'  \item{(}
#'  \item{)}
#'  \item{-}
#'  \item{_}
#'  \item{+}
#'  \item{=}
#'  \item{[}
#'  \item{\{}
#'  \item{]}
#'  \item{\}}
#'  \item{\}
#'  \item{|}
#'  \item{;}
#'  \item{:}
#'  \item{'}
#'  \item{"}
#'  \item{,}
#'  \item{<}
#'  \item{.}
#'  \item{>}
#'  \item{/}
#'  \item{?}
#'  
#' }
#'
#' @docType data
#' @export
#' @keywords data
#' @references \href{http://www.philipstorr.id.au/pcbook/book3/scancode.htm}{Hardware Scan Codes}, \href{https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes}{Virtual-Key Codes}

# Organizing this as a list makes it easier to modify
keyboard_value <- list(
  list(button = "a",         virt_code = 0x41, scan_code = 0x1E, prefix_byte = FALSE, shift = FALSE),
  list(button = "b",         virt_code = 0x42, scan_code = 0x30, prefix_byte = FALSE, shift = FALSE),
  list(button = "c",         virt_code = 0x43, scan_code = 0x2E, prefix_byte = FALSE, shift = FALSE),
  list(button = "d",         virt_code = 0x44, scan_code = 0x20, prefix_byte = FALSE, shift = FALSE),
  list(button = "e",         virt_code = 0x45, scan_code = 0x12, prefix_byte = FALSE, shift = FALSE),
  list(button = "f",         virt_code = 0x46, scan_code = 0x21, prefix_byte = FALSE, shift = FALSE),
  list(button = "g",         virt_code = 0x47, scan_code = 0x22, prefix_byte = FALSE, shift = FALSE),
  list(button = "h",         virt_code = 0x48, scan_code = 0x23, prefix_byte = FALSE, shift = FALSE),
  list(button = "i",         virt_code = 0x49, scan_code = 0x17, prefix_byte = FALSE, shift = FALSE),
  list(button = "j",         virt_code = 0x4A, scan_code = 0x24, prefix_byte = FALSE, shift = FALSE),
  list(button = "k",         virt_code = 0x4B, scan_code = 0x25, prefix_byte = FALSE, shift = FALSE),
  list(button = "l",         virt_code = 0x4C, scan_code = 0x26, prefix_byte = FALSE, shift = FALSE),
  list(button = "m",         virt_code = 0x4D, scan_code = 0x32, prefix_byte = FALSE, shift = FALSE),
  list(button = "n",         virt_code = 0x4E, scan_code = 0x31, prefix_byte = FALSE, shift = FALSE),
  list(button = "o",         virt_code = 0x4F, scan_code = 0x18, prefix_byte = FALSE, shift = FALSE),
  list(button = "p",         virt_code = 0x50, scan_code = 0x19, prefix_byte = FALSE, shift = FALSE),
  list(button = "q",         virt_code = 0x51, scan_code = 0x10, prefix_byte = FALSE, shift = FALSE),
  list(button = "r",         virt_code = 0x52, scan_code = 0x13, prefix_byte = FALSE, shift = FALSE),
  list(button = "s",         virt_code = 0x53, scan_code = 0x1F, prefix_byte = FALSE, shift = FALSE),
  list(button = "t",         virt_code = 0x54, scan_code = 0x14, prefix_byte = FALSE, shift = FALSE),
  list(button = "u",         virt_code = 0x55, scan_code = 0x16, prefix_byte = FALSE, shift = FALSE),
  list(button = "v",         virt_code = 0x56, scan_code = 0x2F, prefix_byte = FALSE, shift = FALSE),
  list(button = "w",         virt_code = 0x57, scan_code = 0x11, prefix_byte = FALSE, shift = FALSE),
  list(button = "x",         virt_code = 0x58, scan_code = 0x2D, prefix_byte = FALSE, shift = FALSE),
  list(button = "y",         virt_code = 0x59, scan_code = 0x15, prefix_byte = FALSE, shift = FALSE),
  list(button = "z",         virt_code = 0x5A, scan_code = 0x2C, prefix_byte = FALSE, shift = FALSE),
  list(button = "A",         virt_code = 0x41, scan_code = 0x1E, prefix_byte = FALSE, shift = TRUE),
  list(button = "B",         virt_code = 0x42, scan_code = 0x30, prefix_byte = FALSE, shift = TRUE),
  list(button = "C",         virt_code = 0x43, scan_code = 0x2E, prefix_byte = FALSE, shift = TRUE),
  list(button = "D",         virt_code = 0x44, scan_code = 0x20, prefix_byte = FALSE, shift = TRUE),
  list(button = "E",         virt_code = 0x45, scan_code = 0x12, prefix_byte = FALSE, shift = TRUE),
  list(button = "F",         virt_code = 0x46, scan_code = 0x21, prefix_byte = FALSE, shift = TRUE),
  list(button = "G",         virt_code = 0x47, scan_code = 0x22, prefix_byte = FALSE, shift = TRUE),
  list(button = "H",         virt_code = 0x48, scan_code = 0x23, prefix_byte = FALSE, shift = TRUE),
  list(button = "I",         virt_code = 0x49, scan_code = 0x17, prefix_byte = FALSE, shift = TRUE),
  list(button = "J",         virt_code = 0x4A, scan_code = 0x24, prefix_byte = FALSE, shift = TRUE),
  list(button = "K",         virt_code = 0x4B, scan_code = 0x25, prefix_byte = FALSE, shift = TRUE),
  list(button = "L",         virt_code = 0x4C, scan_code = 0x26, prefix_byte = FALSE, shift = TRUE),
  list(button = "M",         virt_code = 0x4D, scan_code = 0x32, prefix_byte = FALSE, shift = TRUE),
  list(button = "N",         virt_code = 0x4E, scan_code = 0x31, prefix_byte = FALSE, shift = TRUE),
  list(button = "O",         virt_code = 0x4F, scan_code = 0x18, prefix_byte = FALSE, shift = TRUE),
  list(button = "P",         virt_code = 0x50, scan_code = 0x19, prefix_byte = FALSE, shift = TRUE),
  list(button = "Q",         virt_code = 0x51, scan_code = 0x10, prefix_byte = FALSE, shift = TRUE),
  list(button = "R",         virt_code = 0x52, scan_code = 0x13, prefix_byte = FALSE, shift = TRUE),
  list(button = "S",         virt_code = 0x53, scan_code = 0x1F, prefix_byte = FALSE, shift = TRUE),
  list(button = "T",         virt_code = 0x54, scan_code = 0x14, prefix_byte = FALSE, shift = TRUE),
  list(button = "U",         virt_code = 0x55, scan_code = 0x16, prefix_byte = FALSE, shift = TRUE),
  list(button = "V",         virt_code = 0x56, scan_code = 0x2F, prefix_byte = FALSE, shift = TRUE),
  list(button = "W",         virt_code = 0x57, scan_code = 0x11, prefix_byte = FALSE, shift = TRUE),
  list(button = "X",         virt_code = 0x58, scan_code = 0x2D, prefix_byte = FALSE, shift = TRUE),
  list(button = "Y",         virt_code = 0x59, scan_code = 0x15, prefix_byte = FALSE, shift = TRUE),
  list(button = "Z",         virt_code = 0x5A, scan_code = 0x2C, prefix_byte = FALSE, shift = TRUE),
  list(button = "1",         virt_code = 0x31, scan_code = 0x02, prefix_byte = FALSE, shift = FALSE),
  list(button = "2",         virt_code = 0x32, scan_code = 0x03, prefix_byte = FALSE, shift = FALSE),
  list(button = "3",         virt_code = 0x33, scan_code = 0x04, prefix_byte = FALSE, shift = FALSE),
  list(button = "4",         virt_code = 0x34, scan_code = 0x05, prefix_byte = FALSE, shift = FALSE),
  list(button = "5",         virt_code = 0x35, scan_code = 0x06, prefix_byte = FALSE, shift = FALSE),
  list(button = "6",         virt_code = 0x36, scan_code = 0x07, prefix_byte = FALSE, shift = FALSE),
  list(button = "7",         virt_code = 0x37, scan_code = 0x08, prefix_byte = FALSE, shift = FALSE),
  list(button = "8",         virt_code = 0x38, scan_code = 0x09, prefix_byte = FALSE, shift = FALSE),
  list(button = "9",         virt_code = 0x39, scan_code = 0x0A, prefix_byte = FALSE, shift = FALSE),
  list(button = "0",         virt_code = 0x30, scan_code = 0x0B, prefix_byte = FALSE, shift = FALSE),
  list(button = "num0",      virt_code = 0x60, scan_code = 0x52, prefix_byte = FALSE, shift = FALSE),
  list(button = "num1",      virt_code = 0x61, scan_code = 0x4F, prefix_byte = FALSE, shift = FALSE),
  list(button = "num2",      virt_code = 0x62, scan_code = 0x50, prefix_byte = FALSE, shift = FALSE),
  list(button = "num3",      virt_code = 0x63, scan_code = 0x51, prefix_byte = FALSE, shift = FALSE),
  list(button = "num4",      virt_code = 0x64, scan_code = 0x4B, prefix_byte = FALSE, shift = FALSE),
  list(button = "num5",      virt_code = 0x65, scan_code = 0x4C, prefix_byte = FALSE, shift = FALSE),
  list(button = "num6",      virt_code = 0x66, scan_code = 0x4D, prefix_byte = FALSE, shift = FALSE),
  list(button = "num7",      virt_code = 0x67, scan_code = 0x47, prefix_byte = FALSE, shift = FALSE),
  list(button = "num8",      virt_code = 0x68, scan_code = 0x48, prefix_byte = FALSE, shift = FALSE),
  list(button = "num9",      virt_code = 0x69, scan_code = 0x49, prefix_byte = FALSE, shift = FALSE),
  list(button = "f1",        virt_code = 0x70, scan_code = 0x3B, prefix_byte = FALSE, shift = FALSE),
  list(button = "f2",        virt_code = 0x71, scan_code = 0x3C, prefix_byte = FALSE, shift = FALSE),
  list(button = "f3",        virt_code = 0x72, scan_code = 0x3D, prefix_byte = FALSE, shift = FALSE),
  list(button = "f4",        virt_code = 0x73, scan_code = 0x3E, prefix_byte = FALSE, shift = FALSE),
  list(button = "f5",        virt_code = 0x74, scan_code = 0x3F, prefix_byte = FALSE, shift = FALSE),
  list(button = "f6",        virt_code = 0x75, scan_code = 0x40, prefix_byte = FALSE, shift = FALSE),
  list(button = "f7",        virt_code = 0x76, scan_code = 0x41, prefix_byte = FALSE, shift = FALSE),
  list(button = "f8",        virt_code = 0x77, scan_code = 0x42, prefix_byte = FALSE, shift = FALSE),
  list(button = "f9",        virt_code = 0x78, scan_code = 0x43, prefix_byte = FALSE, shift = FALSE),
  list(button = "f10",       virt_code = 0x79, scan_code = 0x44, prefix_byte = FALSE, shift = FALSE),
  list(button = "f11",       virt_code = 0x7A, scan_code = 0xD9, prefix_byte = FALSE, shift = FALSE),
  list(button = "f12",       virt_code = 0x7B, scan_code = 0xDA, prefix_byte = FALSE, shift = FALSE),
  list(button = "backspace", virt_code = 0x08, scan_code = 0x0E, prefix_byte = FALSE, shift = FALSE),
  list(button = "tab",       virt_code = 0x09, scan_code = 0x0F, prefix_byte = FALSE, shift = FALSE),
  list(button = "enter",     virt_code = 0x0D, scan_code = 0x1C, prefix_byte = FALSE, shift = FALSE),
  list(button = "shift",     virt_code = 0x10, scan_code = 0x2A, prefix_byte = FALSE, shift = FALSE),
  list(button = "ctrl",      virt_code = 0x11, scan_code = 0x1D, prefix_byte = FALSE, shift = FALSE),
  list(button = "alt",       virt_code = 0x12, scan_code = 0x38, prefix_byte = FALSE, shift = FALSE),
  list(button = "capslock",  virt_code = 0x14, scan_code = 0x3A, prefix_byte = FALSE, shift = FALSE),
  list(button = "esc",       virt_code = 0x1B, scan_code = 0x01, prefix_byte = FALSE, shift = FALSE),
  list(button = "pageup",    virt_code = 0x21, scan_code = 0x49, prefix_byte = TRUE, shift = FALSE),
  list(button = "pagedown",  virt_code = 0x22, scan_code = 0x51, prefix_byte = TRUE, shift = FALSE),
  list(button = "end",       virt_code = 0x23, scan_code = 0x4F, prefix_byte = TRUE, shift = FALSE),
  list(button = "home",      virt_code = 0x24, scan_code = 0x47, prefix_byte = TRUE, shift = FALSE),
  list(button = "left",      virt_code = 0x25, scan_code = 0x4B, prefix_byte = TRUE, shift = FALSE),
  list(button = "up",        virt_code = 0x26, scan_code = 0x48, prefix_byte = TRUE, shift = FALSE),
  list(button = "right",     virt_code = 0x27, scan_code = 0x4D, prefix_byte = TRUE, shift = FALSE),
  list(button = "down",      virt_code = 0x28, scan_code = 0x50, prefix_byte = FALSE, shift = FALSE),
  list(button = "insert",    virt_code = 0x2D, scan_code = 0x52, prefix_byte = TRUE, shift = FALSE),
  list(button = " ",         virt_code = 0x20, scan_code = 0x39, prefix_byte = FALSE, shift = FALSE),
  list(button = "del",       virt_code = 0x2E, scan_code = 0x53, prefix_byte = TRUE, shift = FALSE),
  list(button = "numlock",   virt_code = 0x90, scan_code = 0x45, prefix_byte = FALSE, shift = FALSE),
  list(button = "win",       virt_code = 0x5B, scan_code = 0x5B, prefix_byte = TRUE, shift = FALSE),
  
  list(button = "`",         virt_code = 0xC0, scan_code = 0x02, prefix_byte = FALSE, shift = FALSE),
  list(button = "~",         virt_code = 0xC0, scan_code = 0x02, prefix_byte = FALSE, shift = TRUE),
  list(button = "!",         virt_code = 0x31, scan_code = 0x02, prefix_byte = FALSE, shift = TRUE),
  list(button = "@",         virt_code = 0x32, scan_code = 0x03, prefix_byte = FALSE, shift = TRUE),
  list(button = "#",         virt_code = 0x33, scan_code = 0x04, prefix_byte = FALSE, shift = TRUE),
  list(button = "$",         virt_code = 0x34, scan_code = 0x05, prefix_byte = FALSE, shift = TRUE),
  list(button = "%",         virt_code = 0x35, scan_code = 0x06, prefix_byte = FALSE, shift = TRUE),
  list(button = "^",         virt_code = 0x36, scan_code = 0x07, prefix_byte = FALSE, shift = TRUE),
  list(button = "&",         virt_code = 0x37, scan_code = 0x08, prefix_byte = FALSE, shift = TRUE),
  list(button = "*",         virt_code = 0x38, scan_code = 0x09, prefix_byte = FALSE, shift = TRUE),
  list(button = "(",         virt_code = 0x39, scan_code = 0x0A, prefix_byte = FALSE, shift = TRUE),
  list(button = ")",         virt_code = 0x30, scan_code = 0x0B, prefix_byte = FALSE, shift = TRUE),
  list(button = "-",         virt_code = 0xBD, scan_code = 0xBC, prefix_byte = FALSE, shift = FALSE),
  list(button = "_",         virt_code = 0xBD, scan_code = 0xBC, prefix_byte = FALSE, shift = TRUE),
  list(button = "+",         virt_code = 0xBB, scan_code = 0x0D, prefix_byte = FALSE, shift = TRUE),
  list(button = "=",         virt_code = 0xBB, scan_code = 0x0D, prefix_byte = FALSE, shift = FALSE),
  
  list(button = "[",         virt_code = 0xDB, scan_code = 0x1A, prefix_byte = FALSE, shift = FALSE),
  list(button = "{",         virt_code = 0xDB, scan_code = 0x1A, prefix_byte = FALSE, shift = TRUE),
  list(button = "]",         virt_code = 0xDD, scan_code = 0x1B, prefix_byte = FALSE, shift = FALSE),
  list(button = "}",         virt_code = 0xDD, scan_code = 0x1B, prefix_byte = FALSE, shift = TRUE),
  list(button = "\\",        virt_code = 0xDC, scan_code = 0x2B, prefix_byte = FALSE, shift = FALSE),
  list(button = "|",         virt_code = 0xDC, scan_code = 0x2B, prefix_byte = FALSE, shift = TRUE),
  
  list(button = ";",         virt_code = 0xBA, scan_code = 0xBE, prefix_byte = FALSE, shift = FALSE),
  list(button = ":",         virt_code = 0xBA, scan_code = 0xBE, prefix_byte = FALSE, shift = TRUE),
  list(button = "'",         virt_code = 0xDE, scan_code = 0x28, prefix_byte = FALSE, shift = FALSE),
  list(button = '"',         virt_code = 0xDE, scan_code = 0x28, prefix_byte = FALSE, shift = TRUE),
  list(button = ",",         virt_code = 0xBC, scan_code = 0xBC, prefix_byte = FALSE, shift = FALSE),
  list(button = "<",         virt_code = 0xBC, scan_code = 0xBC, prefix_byte = FALSE, shift = TRUE),
  list(button = ".",         virt_code = 0xBE, scan_code = 0x34, prefix_byte = FALSE, shift = FALSE),
  list(button = ">",         virt_code = 0xBE, scan_code = 0x34, prefix_byte = FALSE, shift = TRUE),
  list(button = "/",         virt_code = 0xBF, scan_code = 0x35, prefix_byte = FALSE, shift = FALSE),
  list(button = "?",         virt_code = 0xBF, scan_code = 0x35, prefix_byte = FALSE, shift = TRUE)
  
)

# Convert to a data.frame
keyboard_value <- do.call(rbind, args = lapply(keyboard_value, FUN = data.frame))

# Code to get the itemized key list for documentation purposes.
# cat(paste0("#'  \\item{", levels(keyboard_value$button), "}", collapse = "\n"))