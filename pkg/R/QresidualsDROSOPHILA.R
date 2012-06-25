QresidualsDROSOPHILA<-function(nameTF){
    require(MEET)
    drosophilaQresiduals<-new.env()
    data("DrosophilaQresiduals",envir=drosophilaQresiduals)
	model<-new("Model")
    if (is.na(summary(paste("model",nameTF,sep="")==ls(envir=drosophilaQresiduals))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")

    }else{

        slot(model,"model")<-get(ls(envir=drosophilaQresiduals)[which(paste("model",nameTF,sep="")==ls(envir=drosophilaQresiduals))],envir=drosophilaQresiduals)

    }


    return(model)
    
}