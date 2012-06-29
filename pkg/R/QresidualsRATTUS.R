QresidualsRATTUS<-function(nameTF){
    require(MEET)
    rattusQresiduals<-new.env()
    data("RattusQresiduals",envir=rattusQresiduals)
	model<-new("Model")

    if (is.na(summary(paste("model",nameTF,sep="")==ls(envir=rattusQresiduals))["TRUE"])=="TRUE"){

                print("Transcription Factor not included")

            }else{

                slot(model,"model")<-get(ls(envir=rattusQresiduals)[which(paste("model",nameTF,sep="")==ls(envir=rattusQresiduals))],envir=rattusQresiduals)

    }
   
    return(model)
    
}
	


