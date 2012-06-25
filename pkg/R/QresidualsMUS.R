QresidualsMUS<-function(nameTF){
    require(MEET)
    musQresiduals<-new.env()
    data("MusQresiduals",envir=musQresiduals)
	model<-new("Model")
    if (is.na(summary(paste("model",nameTF,sep="")==ls(envir=musQresiduals))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")

    }else{

        slot(model,"model")<-get(ls(envir=musQresiduals)[which(paste("model",nameTF,sep="")==ls(envir=musQresiduals))],envir=musQresiduals)

    }

    return(model)
    
}