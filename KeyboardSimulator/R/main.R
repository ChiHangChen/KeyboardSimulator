

# Keyboard ---------------------------------------------------------------


# roxygen2::roxygenise()

#' Simulate Keyboard Press
#' @param button character. The key to be simulate, can press several keys simultaneously with \code{+} as separator
#' , uppercase or lowercase are not sensitive. 
#' @param hold logical. Should the key to be held after press; if \code{TRUE}, the key can 
#' be released by press the button on phsical keyboard or using \code{\link[KeyboardSimulator]{keybd.release}} function
#' @examples
#' ## press single key
#' keybd.press('a')
#' 
#' ## press several key
#' keybd.press('Alt+F4')
#' 
#' ## press several key using hold
#' keybd.press('Alt',hold=TRUE)
#' keybd.press('F4')
#' keybd.release('Alt')
keybd.press <- function(button,hold=FALSE) {
  if(!is.character(button))
    stop("Argument must be character")
  button_str<-sapply(strsplit(button,"\\+")[[1]],tolower)
  button_check<-!button_str%in%keyboard_value$button
  if( any(button_check) )
    stop(paste0("Argument 'button' include none support key, available keys are : ",paste0(as.character(keyboard_value$button),collapse = " ")))
  button_value<-sapply(button_str,function(i) keyboard_value$value[keyboard_value$button==i])
  if(hold){
    press_c(as.vector(button_value))
  }else{
    press_and_release_c(as.vector(button_value))
  }
}

#' Release Held key Pressed by \code{\link[KeyboardSimulator]{keybd.press}}
#' @param button character. The key to be released, can release several keys simultaneously with  \code{+} as separator
#' , uppercase or lowercase are not sensitive. 
#' @examples
#' ## Move to the third working window
#' keybd.press('Alt',hold=TRUE)
#' keybd.press('Tab')
#' Sys.sleep(0.1)
#' keybd.press('Tab')
#' keybd.release('Alt')
keybd.release <- function(button) {
  if(!is.character(button))
    stop("Argument must be character")
  button_str<-sapply(strsplit(button,"\\+")[[1]],tolower)
  button_check<-!button_str%in%keyboard_value$button
  if( any(button_check) )
    stop(paste0("Argument 'button' include none support key, available keys are : ",paste0(as.character(keyboard_value$button),collapse = " ")))
  button_value<-sapply(button_str,function(i) keyboard_value$value[keyboard_value$button==i])
  release_c(as.vector(button_value))
}



# Mouse -------------------------------------------------------------------

#' Simulate mouse click
#' @param button character. The allowed values are "\code{left}" and "\code{right}"
#' @param hold logical. Should the key to be held after click.
#' @examples
#' mouse.click(button="left",hold=TRUE)
mouse.click<-function(button="left",hold=FALSE){
  btn<-tolower(button)
  if(btn=="left"){
    if(hold){
      mouse_left_hold()
    }else{
      mouse_left_click()
    }
  }else if(btn=="right"){
    if(hold){
      mouse_right_hold()
    }else{
      mouse_right_click()
    }
  }else{
    stop("Such button is not available")
  }
}

#' Release Held key clicked by \code{\link[KeyboardSimulator]{mouse.click}}
#' @param button character. The allowed values are "\code{left}" and "\code{right}"
#' @examples
#' ## Click right button
#' mouse.click(button="right",hold=TRUE)
#' mouse.release(button="right")
mouse.release<-function(button="left"){
  btn<-tolower(button)
  if(btn=="left"){
    mouse_left_release()
  }else if(btn=="right"){
    mouse_right_release()
  }else{
    stop("Such button is not available")
  }
}


