library(survival)
library(SPACox)
pheno<-read.table('KBN_CA_pheno.txt',h=T)
disease<-c('PACA','UTCA','BRCA','THYCA','PROCA','GALLCA')
for(i in 16:21){
	try({obj.null = SPACox_Null_Model(Surv(pheno[1:nrow(pheno),2*i],pheno[1:nrow(pheno),2*i-1])~SEX+AGE+PC1+PC2+PC3+PC4+PC5+PC6+PC7+PC8+PC9+PC10+B_DATA_CLASS_A01+ B_DATA_CLASS_A02+ B_DATA_CLASS_D04+ B_DATA_CLASS_D05+ B_DATA_CLASS_D06+ B_DATA_CLASS_D07+ B_DATA_CLASS_D08+ B_DATA_CLASS_D09+ B_DATA_CLASS_D10+ B_DATA_CLASS_D11+ B_DATA_CLASS_D12+ B_DATA_CLASS_D13+ B_DATA_CLASS_D14+ B_DATA_CLASS_N01+ B_DATA_CLASS_N02+ B_DATA_CLASS_N03+ B_DATA_CLASS_N04+ B_DATA_CLASS_N05+ B_DATA_CLASS_N06+ B_DATA_CLASS_N08+ B_DATA_CLASS_N09+ B_DATA_CLASS_N10 +B_DATA_CLASS_N11+ B_DATA_CLASS_N12+ B_DATA_CLASS_N13+ B_DATA_CLASS_N14+ B_DATA_CLASS_N15+ B_DATA_CLASS_N16+ B_DATA_CLASS_N17, data=pheno,pIDs=pheno$V2,gIDs=pheno$V2)

	SPACox.plink(obj.null,'/media/leelabsg_storage01/KBN_WORK/plinkfile/KBN_WHOLE',paste0('KBN_SPACox_',disease[i-15],'_CA.txt'))})
}

