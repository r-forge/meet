detection <-function (iicc){
	require("MEET")
	
	
	if(length(iicc$model)==0){
	  iicc$parameterIdeal<-iicc$parameter
	  ConstructModel(iicc)
	  results<-Prediction(iicc)

	}else{
	  
	  results<-Prediction(iicc)
	}
# 	
	print(results)
	return(results)
}

