QresidualsHOMO<-function(nameTF){
    require(MEET)
    homoQresiduals<-new.env()
    data("HomoQresiduals",envir=homoQresiduals)
	model<-new("Model")
    if (is.na(summary(paste("model",nameTF,sep="")==ls(envir=homoQresiduals))["TRUE"])=="TRUE"){

        print("Transcription Factor not included")

    }else{

        slot(model,"model")<-get(ls(envir=homoQresiduals)[which(paste("model",nameTF,sep="")==ls(envir=homoQresiduals))],envir=homoQresiduals)

    }
return(model)
    
}