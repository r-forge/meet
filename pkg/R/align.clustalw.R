align.clustalw <-function(filein=TF, fileout="Sq.fa", call=call.clustalw){
	read.fasta <- get("read.fasta", pos = "package:seqinr")
    strtocall <- paste(call, ' -infile=',filein, ' -outfile=',fileout, ' -output=FASTA', sep='' )
      
	system(strtocall)
	sq<-read.fasta(file=fileout)
	sqalineada<-matrix(,length(sq),length(sq[[1]]))
	for (i in c(1:length(sq))){
		sqalineada[i,]<-sq[[i]]
	}
return(sqalineada)

}

