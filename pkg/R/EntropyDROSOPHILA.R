EntropyDROSOPHILA<-function(nameTF){
    require(MEET)
    drosophilaentropy<-new.env()
    data("DrosophilaEntropy",envir=drosophilaentropy)
	model<-new("Model")

    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=drosophilaentropy))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")
        model<-NULL
    }else{

        r<-slot(model,"model")<-get(ls(envir=drosophilaentropy)[which(paste("iicc",nameTF,sep="")==ls(envir=drosophilaentropy))],envir=drosophilaentropy)
        r$model$Transcriptionfactor<-r$Transcriptionfactor

        slot(model,"model")<-r$model

    }

    return(model)
    
}