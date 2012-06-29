DivergenceDROSOPHILA<-function(nameTF){
    require(MEET)
    drosophiladivergence<-new.env()
    data("DrosophilaDivergence",envir=drosophiladivergence)
	model<-new("Model")

    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=drosophiladivergence))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")
        model<-NULL
    }else{
    
        r<-slot(model,"model")<-get(ls(envir=drosophiladivergence)[which(paste("iicc",nameTF,sep="")==ls(envir=drosophiladivergence))],envir=drosophiladivergence)
        r$model$Transcriptionfactor<-r$Transcriptionfactor
        slot(model,"model")<-r$model

}

    return(model)
    
}