#Qual Check MBCs
#want a stim to unstim ratio of >=4 (taken from Falkard 2019), and KLH =<3


check_ratio<-function(stim, unstim){
        pass<-matrix(0,0,2)
        fail<-matrix(0,0,2)
        for(i in len(unstim)){
                if(stim[i,"total"]/unstim[i,"total"]>=4){
                        pass<-c(i, stim[i,"total"]/unstim[i,"total"])
                }
                else{
                        fail<-c(unstim[i,"SID"], stim[i,"total"]/unstim[i,"total"])    
                }
        }

        return(pass)
}

check_KLH<-function()
        
MBC_chec<-fun(data,)