DivergenceRATTUS<-function(nameTF){
    require(MEET)
    rattusdivergence<-new.env()
    data("RattusDivergence",envir=rattusdivergence)
	model<-new("Model")

    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=rattusdivergence))["TRUE"])=="TRUE"){

                    print("Transcription Factor not included")
                    model<-NULL
            }else{
                        
                    r<-slot(model,"model")<-get(ls(envir=rattusdivergence)[which(paste("iicc",nameTF,sep="")==ls(envir=rattusdivergence))],envir=rattusdivergence)
                    r$model$Transcriptionfactor<-r$Transcriptionfactor
                    slot(model,"model")<-r$model
    }


    return(model)
    
}
