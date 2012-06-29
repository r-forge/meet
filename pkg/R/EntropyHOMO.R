EntropyHOMO<-function(nameTF){
    require(MEET)
    homoentropy<-new.env()
    data("HomoEntropy",envir=homoentropy)
	model<-new("Model")

    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=homoentropy))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")
        model<-NULL
    
    }else{

        r<-slot(model,"model")<-get(ls(envir=homoentropy)[which(paste("iicc",nameTF,sep="")==ls(envir=homoentropy))],envir=homoentropy)
        r$model$Transcriptionfactor<-r$Transcriptionfactor
        slot(model,"model")<-r$model

}


    return(model)
    
}