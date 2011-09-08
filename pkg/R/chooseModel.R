chooseModel<-function(AUC, iicc){
 require(MEET)

    variance<-unlist(lapply(AUC, function(x){sd(x)}))
    mean<-unlist(lapply(AUC, function(x){mean(x)}))
    areamv<-mean*(1-variance)
    indexParameter<-which(areamv==max(areamv))
    print(indexParameter)
    print("parameter")
    print(iicc$vector[indexParameter])
    parametersIdeal<-iicc$vector[indexParameter]
    print(parametersIdeal)
	y<-list(parametersIdeal=parametersIdeal,index=indexParameter)
    return(y)
     
}

