ConstructModel<-function(iicc){
    Model<-switch(iicc$method, "Entropy"=ModelEntropy(iicc), "Divergence"=ModelDivergence(iicc),"PCA"=ModelPCA(iicc) ,"MEME"=ModelMEME(iicc),"MDscan"= ModelMDscan(iicc),"MATCH"=ModelMATCH(iicc),"transMEME"=ModeltransMEME(iicc),stop("Detection method not included"))

    return(Model)
}
