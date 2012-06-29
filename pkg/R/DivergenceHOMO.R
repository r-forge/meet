DivergenceHOMO<-function(nameTF){
    require(MEET)
    homodivergence<-new.env()
    data("HomoDivergence",envir=homodivergence)
	model<-new("Model")
    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=homodivergence))["TRUE"])=="TRUE"){
        print("Transcription Factor not included")
        model<-NULL
    }else{

        r<-slot(model,"model")<-get(ls(envir=homodivergence)[which(paste("iicc",nameTF,sep="")==ls(envir=homodivergence))],envir=homodivergence)
        r$model$Transcriptionfactor<-r$Transcriptionfactor    
        slot(model,"model")<-r$model
    }


    return(model)
    
}