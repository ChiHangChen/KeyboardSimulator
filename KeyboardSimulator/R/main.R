

# Keyboard ---------------------------------------------------------------


keyboard_value<-read.csv("./data/keyboardvalue.csv")

#Can be released by press the button on phsical keyboard or using keybd.release function
keybd.press <- function(button,hold=F) {
  if(!is.character(button))
    stop("Argument must be character")
  button_str<-sapply(strsplit(button,"\\+")[[1]],tolower)
  button_check<-!button_str%in%keyboard_value$button
  if( any(button_check) )
    stop(paste0("No such button ", paste(button_str[button_check],collapse = ' and ')))
  button_value<-sapply(button_str,function(i) keyboard_value$value[keyboard_value$button==i])
  if(hold){
    press_c(as.vector(button_value))
  }else{
    press_and_release_c(as.vector(button_value))
  }
}


keybd.release <- function(button) {
  if(!is.character(button))
    stop("Argument must be character")
  button_str<-sapply(strsplit(button,"\\+")[[1]],tolower)
  button_check<-!button_str%in%keyboard_value$button
  if( any(button_check) )
    stop(paste0("No such button ", paste(button_str[button_check],collapse = ' and ')))
  button_value<-sapply(button_str,function(i) keyboard_value$value[keyboard_value$button==i])
  release_c(as.vector(button_value))
}



# Mouse -------------------------------------------------------------------
mouse.click<-function(btn="left",hold=F){
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
  }
}

mouse.release<-function(btn="left"){
  if(btn=="left"){
    mouse_left_release()
  }else if(btn=="right"){
    mouse_right_release()
  }
}


