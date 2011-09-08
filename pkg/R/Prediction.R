Prediction<-function(iicc){

  resultsPrediction<-switch(iicc$method, "Entropy"=PredictInformationTheory(iicc), "Divergence"=PredictDivergence(iicc),"PCA"=PredictPCA(iicc) ,"MEME"=PredictMEME(iicc),"MDscan"= PredictMDscan(iicc),"MATCH"=PredictMATCH(iicc),"transMEME"=PredicttransMEME(iicc),stop("Detection method not included"))

  return(resultsPrediction)
}
