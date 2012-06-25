 3
correction.entropy <-function(q,p,long,iicc){
	
	Prob<-as.numeric(iicc$background)
	
#setClass("correction",representation(Herror="vector",sderror="vector"),prototype(Herror=vector("numeric"),sderror=vector("numeric")))

	Herror<-sderror<-VAR<-vector("numeric",p)
	for (pp in c(1:p)){
		Etotal<-Va<-0
		for (a in c(pp:0)){
			for (t in c((pp-a):0)){
				for (c in c((pp-(a+t)):0)){
					g<-(pp-(a+t+c))
					Pn<-((factorial(pp))/((factorial(a))*(factorial(t))*(factorial(c))*(factorial(g))))*(Prob[1]^a)*(Prob[2]^t)*(Prob[3]^c)*(Prob[4]^g)
					probmat<-as.matrix(c(a,t,c,g))/pp
					H<-switch(iicc$classentropy, "Shannon"=entropy.Shannon(probmat),"Renyi"=entropy.Renyi(probmat,q))
					E<-(Pn*H)
					Etotal<-sum(E,Etotal)
					Va<-sum(Va,E*H)
				}
			}
		}
		Herror[pp]<-Etotal
		VAR[pp]<-Va-(Etotal^2)
	}
sderror<-(long*VAR)^(1/2)
    resultat<-new("correction")
    slot(resultat,"Herror")<-Herror
    slot(resultat,"sderror")<-sderror
    #resultat<-list(Herror=Herror,sderror=sderror)
return(resultat)
}

