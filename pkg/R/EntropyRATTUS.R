EntropyRATTUS<-function(nameTF){
    require(MEET)
    rattusentropy<-new.env()
    data("RattusEntropy",envir=rattusentropy)
	model<-new("Model")

    if (is.na(summary(paste("iicc",nameTF,sep="")==ls(envir=rattusentropy))["TRUE"])=="TRUE"){
             
                print("Transcription Factor not included")
                model<-NULL
       
        }else{
                r<-slot(model,"model")<-get(ls(envir=rattusentropy)[which(paste("iicc",nameTF,sep="")==ls(envir=rattusentropy))],envir=rattusentropy)
                r$model$Transcriptionfactor<-r$Transcriptionfactor
                slot(model,"model")<-r$model
    }

  return(model)

}
