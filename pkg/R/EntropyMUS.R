EntropyMUS<-function(nameTF){
    require(MEET)
    musentropy<-new.env()
    data("MusEntropy",envir=musentropy)
	model<-new("Model")

    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=musentropy))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")
        model<-NULL

    }else{
        r<-slot(model,"model")<-get(ls(envir=musentropy)[which(paste("iicc",nameTF,sep="")==ls(envir=musentropy))],envir=musentropy)
        r$model$Transcriptionfactor<-r$Transcriptionfactor
        slot(model,"model")<-r$model

}

    return(model)
    
}