#------------------------------------------------------------------------------------------
#       PROJECT: Griffith University ARC Linkage: WQAIS 
#       Author: Melissa Winnel 
#
#       File: functionsGeneric.R
#
#       Function: functions written to replace previous version in functions.R
#       more generic usage functions without needing hard coded and replication
#
#
#------------------------------------------------------------------------------------------

extractCurve <- function(){
  
    #extract from when state changed - minus wait time
    
  
  
}





dataTest <- function(varname = sensor.config){
  
  n <- length(varname)
  dflist <- vector( "list", n )
  
  for( i in 1:n ){
    
    dflist[[i]] <- data.frame(matrix(NA, nrow=0, ncol=4))
    colnames(dflist[[i]]) <- c("Date", "Time", varname[i], "MINUTES")
    
    
    
  }
  
  
  dflist[[1]] <- as.data.frame(cbind( event$Date[1],event$Time[1],
                                      as.numeric(as.character(event$Temp[1])),
                                      as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[2]] <- as.data.frame(cbind( event$Date[1],event$Time[1],
                                      as.numeric(as.character(event$Temp[1])),
                                      as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[3]] <-as.data.frame( cbind( event$Date[1],event$Time[1],
                                      as.numeric(as.character(event$pH[1])),
                                      as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[4]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Cond[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[5]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Turb[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[6]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Turb[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[7]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Temp[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[8]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$pH[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[9]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Cond[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[10]] <- as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Turb[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[11]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                        as.numeric(as.character(event$Turb[1])),
                                        as.numeric(as.character(event$MINUTES[1]))))
  #c("TempA", "TempC", "pH", "Cond", "TurbS","TurbA", "TempC2", "pH2", "Cond2", "TurbS2","TurbA2")
  
    event <<- tail(event,n=-1)
  
    
    UPDATE <<-  c(TRUE, TRUE, TRUE, TRUE, TRUE,TRUE, TRUE, TRUE, TRUE, TRUE,TRUE) #11 variables - updated only for 4 key
  
  for( i in 1:n ){
    
  #  dflist[[i]] <- data.frame(matrix(NA, nrow=0, ncol=4))
    colnames(dflist[[i]]) <- c("Date", "Time", varname[i], "MINUTES")
    
    
  }


  return(dflist)
  
  
}



dataTestNew <- function(varname = sensor.config){
  
  n <- length(varname)
  dflist <- vector( "list", n )
  
  for( i in 1:n ){
    
    dflist[[i]] <- data.frame(matrix(NA, nrow=0, ncol=4))
    colnames(dflist[[i]]) <- c("Date", "Time", varname[i], "MINUTES")
    
    
    
  }
  
 # Date     Time TempA TempC TempC2    pH   pH2   Cond  Cond2 TurbA TurbA2 TurbS TurbS2 MINUTES
  dflist[[1]] <- as.data.frame(cbind( event$Date[1],event$Time[1],
                                      as.numeric(as.character(event$TempA[1])),
                                      as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[2]] <- as.data.frame(cbind( event$Date[1],event$Time[1],
                                      as.numeric(as.character(event$TempC[1])),
                                      as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[3]] <-as.data.frame( cbind( event$Date[1],event$Time[1],
                                      as.numeric(as.character(event$pH[1])),
                                      as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[4]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Cond[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[5]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$TurbS[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[6]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$TurbA[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  dflist[[7]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$TempC2[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[8]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$pH2[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[9]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$Cond2[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[10]] <- as.data.frame(cbind( event$Date[1],event$Time[1],
                                       as.numeric(as.character(event$TurbS2[1])),
                                       as.numeric(as.character(event$MINUTES[1]))))
  
  
  dflist[[11]] <-  as.data.frame(cbind( event$Date[1],event$Time[1],
                                        as.numeric(as.character(event$TurbA2[1])),
                                        as.numeric(as.character(event$MINUTES[1]))))
  #c("TempA", "TempC", "pH", "Cond", "TurbS","TurbA", "TempC2", "pH2", "Cond2", "TurbS2","TurbA2")
  
  event <<- tail(event,n=-1)
  
  
  UPDATE <<-  c(TRUE, TRUE, TRUE, TRUE, TRUE,TRUE, TRUE, TRUE, TRUE, TRUE,TRUE) #11 variables - updated only for 4 key
  
  for( i in 1:n ){
    
    #  dflist[[i]] <- data.frame(matrix(NA, nrow=0, ncol=4))
    colnames(dflist[[i]]) <- c("Date", "Time", varname[i], "MINUTES")
    
    
  }
  
  
  return(dflist)
  
  
}

GetData <- function(varname = sensor.config) {
  
  n <- length(varname)
  dflist <- vector( "list", n )
  for( i in 1:n ){
    
    dflist[[i]] <- data.frame(matrix(NA, nrow=0, ncol=4))
    colnames(dflist[[i]]) <- c("Date", "Time", varname[i], "MINUTES")
    
  }
  
  
  
  repeat{   
    write.socket(sensor.socket,"Data\r\n")
    
    tryCatch({  dataSS <- read.socket(sensor.socket) }, condition=function(ex) {
      a <- print(ex)
      write(paste(Sys.time(),as.character(a),sep=" "), "log.txt",  append=TRUE); })

    if(!exists("dataSS")){
      close.socket(sensor.socket)
      sensor.socket <<- make.socket(host="localhost", port=8888)
      read.socket(sensor.socket)
      print(paste("socket read error"))
      break
    }
  
    print(paste("DATA =",dataSS))
    
    a <- unlist(strsplit(dataSS, "\\,"))
    
    if ( !is.na(match(a[1], "None\r\n")) ){  break  }
    
    
    if( !is.na(match(dataSS,"\r\n")) || !is.na(match(dataSS,"")) ) {
      close.socket(sensor.socket)
      sensor.socket <<- make.socket(host="localhost", port=8888)
      read.socket(sensor.socket)
      print(paste("socket read error"))
      break
    }
    
    
    if( !is.na(a[2]) ) {
      
      pos <- match(a[2],varname)
      
      if(!is.na(pos)) {
        
        UPDATE[pos] <<- TRUE
        
        if( nchar(a[3]) <= 10 ){  #check if the time stamp is too short - bug in midnight timestamps
          a[3] <- as.character(format(Sys.time(), "%d/%m/%Y %H:%M:%S"))
        }
        
        returned_data <- cbind( unlist(strsplit(a[3]," "))[[1]], unlist(strsplit(a[3]," "))[[2]])
        colnames(returned_data ) <- c("Date", "Time") 
        ## AM OR PM
        
        m <- HandleSuppliedTime(as.data.frame(returned_data) ,"%d/%m/%Y",hourstart = 1 ,
                                minstart = 4 , )
        
        print("minutes done")
        #l <- dim(dflist[[pos]])[1] + 1
        d <- cbind( unlist(strsplit(a[3], " "))[[1]] , unlist( strsplit(a[3], " ") )[[2]], as.numeric(unlist(strsplit(a[4], "\r\n")[[1]])),
                    as.data.frame(m ) )
        
        colnames(d) <- c("Date", "Time", varname[pos], "MINUTES")
        #d[,3] <- as.numeric(levels(d[,3]))[f]
        
        dflist[[pos]] <- rbind( dflist[[pos]],as.data.frame(d) )
        colnames(dflist[[pos]]) <- c("Date", "Time", varname[pos], "MINUTES")
        
        
        
      }
    }
    
  } #end repeat
  
  return(dflist)
  
  
}


GetData2 <- function(varname = sensor.config) {
  ## returned_data table format Sensor Name, Date, Time, Value,MINUTES, POS
  
  returned_data_table <- data.frame(matrix(NA, nrow = 0, ncol = 6))
  colnames(returned_data_table) <- c("Date", "Time","Value", "MINUTES", "SensorName","POS")
 
repeat{   

  
  write.socket(sensor.socket,"Data\r\n")

  dataSS <- read.socket(sensor.socket)
  
  
  
  print(paste("DATA =",dataSS))
  
  a <- unlist(strsplit(dataSS, "\\,"))

  if ( !is.na(match(a[1], "None\r\n")) ){  break  }
 
  
  if( !is.na(match(dataSS,"\r\n")) || !is.na(match(dataSS,"")) ) {
    close.socket(sensor.socket)
    sensor.socket <<- make.socket(host="localhost", port=8888)
    read.socket(sensor.socket)
    print(paste("socket read error"))
    break
  }
  
  ### NEGATIVE LENGTH READ ??   
 
  
  ## process returned data string
  if( !is.na(a[2]) ) {
    
    pos <- match(a[2],varname)

    if(!is.na(pos)) {
   
    UPDATE[pos] <<- TRUE
    
    returned_data <- cbind( unlist(strsplit(a[3], " "))[[1]] , unlist( strsplit(a[3], " ") )[[2]] )
    colnames(returned_data ) <- c("Date", "Time") 
    
    ## AM OR PM
    
    m <- HandleSuppliedTime(as.data.frame(returned_data) ,"%d/%m/%Y",hourstart = 1 ,
                              minstart = 4 , )
    
    print("minutes done")
    #l <- dim(dflist[[pos]])[1] + 1
#    d <- (eval( parse( text =  
 #                        paste("dflist." , file.names[[name.i[pos]]],sep="") )))
    
    d <- cbind( unlist(strsplit(a[3], " "))[[1]] , unlist( strsplit(a[3], " ") )[[2]], as.numeric(unlist(strsplit(a[4], "\r\n")[[1]])),
                as.data.frame(m ),file.names[[name.i[pos]]],pos )
    d <-  colnames(returned_data_table) <- c("Date", "Time","Value", "MINUTES", "SensorName","POS")

    returned_data_table <- rbind(returned_data_table, d)
    
   
    #d[,3] <- as.numeric(levels(d[,3]))[f]
    
    # colnames(dflist[[pos]]) <- c("Date", "Time", varname[pos], "MINUTES")
    
    
    
    
     
    }
  }
  
  
  
  } #end repeat


  return(returned_data_table) 
         



}




# Calculate supplied time from 2000/1/1.  
# Args:
#   dataset: data contain time information.
#   date.fmt: date format in the given data.
#   hourstart: hour start location in the given data.
#   minstart: minute start location in the given data.
# Returns:
#   Supplied time, if cannot calculate supplied time, delete relative data in the dataset.

HandleSuppliedTime <- function(dataset, date.fmt, hourstart, minstart, listinputparameters=FALSE) {

  
  
  if(listinputparameters){
    print(paste("Format for date:", date.fmt), quote=F)
    print(paste("Character of Time or DateTime field where hour starts:", hourstart), quote=F)
    print(paste("Character of Time or DateTime field where minutes starts:", minstart), quote=F)

  }
  
  if (any("Date" == colnames(dataset))) {
    date <- strptime(dataset$Date,format=date.fmt)
    print(paste("Format for date:",date))
    print("Time", dataset$Time)
    if (any("Date" == colnames(dataset))) {
      
      hour <- as.numeric(unlist(strsplit(as.character(dataset$Time),":"))[[1]])
      minute <- as.numeric(unlist(strsplit(as.character(dataset$Time),":"))[[2]])
    }
      #minute <- as.numeric(substring(dataset$Time,minstart-1,minstart))
    print(paste("Format for date:",date, "hour: ", hour, "minute" , minute))

  } 
  else {
    date <- strptime(substring(dataset$DateTime, 1, hourstart - 1), format = date.fmt)
    hour <- as.numeric(substring(dataset$DateTime, hourstart, hourstart + 1))
    minute <- as.numeric(substring(dataset$DateTime, minstart, minstart + 1))

  }
  
  # Compute minutes relative to first record (ignoring daylight saving time)
  date0 <- strptime("1/01/2000", format="%d/%m/%Y")
  minutes.supplied <- round(as.numeric(difftime(date, date0, unit="days"))) * 1440 + hour * 60 + minute
  
  # If there are records for which minutes.supplied could not be calculated,
  #       report the number of such records, list them and delete them.
  minutes.supplied.missing <- is.na(minutes.supplied)
  Nminutes.supplied.missing <- sum(minutes.supplied.missing)
  if(Nminutes.supplied.missing > 0){      
    print(paste("Number of records for which time not clear: ", Nminutes.supplied.missing), quote = FALSE)
    print("These records are listed below", quote = FALSE)
    print(cbind(dataset[minutes.supplied.missing, ], minutes.supplied[minutes.supplied.missing]))
    keep <- !minutes.supplied.missing
    #dataset <- dataset[keep, ]
    #minutes.supplied <- minutes.supplied[keep]
    print("THIS??????")
  } 
  else {
    #print("minutes.supplied computed for all records",quote=FALSE)
  }
  
  return(as.numeric(minutes.supplied))
  
}



################################################################################
#
#       custom plotting function
#
################################################################################

plotting <- function(data_set_2, varCol = 3, alarms.x,alarms.y, period.to.show, current_pos, POINTS.SHOW=FALSE, label, setdims = FALSE, dims=c(7,7.4)) {       
  
  
  tl <- runquantile(data_set_2[, varCol], 241, probs=c(0.5, 0.75))
  
  if (setdims) {
    print("setdims")
    plot(data_set_2$MINUTES, as.numeric(data_set_2[, varCol]), 
         xlim = c(data_set_2$MINUTES[current_pos] - period.to.show, data_set_2$MINUTES[current_pos]), 
         axes=FALSE, pch=20,cex=.5, xlab="", ylab=label, type="l", ylim = dims)
  } else {
    print("FALSE")
    plot(as.numeric(data_set_2$MINUTES), as.numeric(data_set_2[, varCol]), 
    #     xlim = c(data_set_2$MINUTES[current_pos] - period.to.show, data_set_2$MINUTES[current_pos]), 
         axes = FALSE, pch=20, cex=.5, xlab="", type="l", ylab = label)
    #type = "l")
  }
  
  lines(data_set_2$MINUTES, tl[, 1], col="green", cex=1.5)
  box()
  

  if (POINTS.SHOW) {
   # points(alarms[alarms$DIRECTION == "AB", 1], alarms[alarms$DIRECTION == "AB", 2],pch = 20, col = "blue")
  #  points(alarms[alarms$DIRECTION == "BW", 1], alarms[alarms$DIRECTION == "BW", 2],pch = 20, col = "red")

    points(as.numeric(alarms.x),as.numeric(alarms.y),pch = 20, col = "red")
  }
  
  axis(2)
  LabelTimeAxis()
}

