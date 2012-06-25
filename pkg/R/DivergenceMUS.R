DivergenceMUS<-function(nameTF){
    require(MEET)
    musdivergence<-new.env()
    data("MusDivergence",envir=musdivergence)
	model<-new("Model")
   
    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=musdivergence))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")
        model<-NULL

    }else{

    r<-slot(model,"model")<-get(ls(envir=musdivergence)[which(paste("iicc",nameTF,sep="")==ls(envir=musdivergence))],envir=musdivergence)
    r$model$Transcriptionfactor<-r$Transcriptionfactor
    slot(model,"model")<-r$model
}


    
    return(model)
    
}