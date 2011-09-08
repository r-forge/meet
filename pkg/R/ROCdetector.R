ROCdetector <-function(Scores, labels, iicc){

	require("ROCR")
	
	AREA<-perf<-lapply(seq(1, length(Scores), 1), function(x){})
	 
	for (j in c(1:length(Scores))){
    
	  pred<-prediction(Scores[[j]],labels[[j]])
	  perf[[j]]<-performance(pred,"tpr","fpr")
	  r<-performance(pred,'auc')
	  AREA[[j]]<-as.numeric(slot(r,"y.values"))
	 }

  	bestparameter<-chooseModel(AREA, iicc)
	iicc$parametersIdeal<-bestparameter$parametersIdeal
 	FinalModel<-switch(iicc$method, "Entropy"=ModelEntropy(iicc), "Divergence"=ModelDivergence(iicc),"PCA"=ModelPCA(iicc) ,"MEME"=ModelMEME(iicc),"MDscan"= ModelMDscan(iicc),"MATCH"=ModelMATCH(iicc),"transMEME"=ModeltransMEME(iicc),stop("Detection method not included"))
 	iicc$model<-FinalModel
	#y<-list(Area=AREA,ROC=perf[[bestparameter$index]], parameters=iicc$parametersIdeal, model=iicc$model)
	y<-list(Area=AREA, parameters=iicc$parametersIdeal, model=iicc$model)
	
}

