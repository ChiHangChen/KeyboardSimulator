# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
# keyboard_value<-read.csv("keyboardvalue.csv")
keyboard_value<-read.csv("C:/Users/ChiHang/Documents/GitHub/KeyboardSimulator/keyboardvalue.csv")
press_and_release <- function(button) {
  button_str<-setdiff(strsplit(button,"\\+")[[1]],"\\+")
  button_check<-!button_str%in%keyboard_value$button
  if( any(button_check) ){
    stop(paste0("No such button ", paste(button_str[button_check],collapse = ' and ')))
  }
  button_value<-sapply(button_str,function(i) keyboard_value$value[keyboard_value$button==i])
  print(button_value)
}

