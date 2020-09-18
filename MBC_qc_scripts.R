#Qual Check MBCs
#want a stim to unstim ratio of >=4 (taken from Falkard 2019), and KLH =<3


check_ratio<-function(stim, unstim){ #this feels inelegant,but perhaps serviceable. would have to do x3 unless can create matrix where "pass" values added by index
        pass<-data.frame(0,0,3)
        colnames(pass)<-c("SID","Total Stim:Total Unstim", "KLH")
        fail<-data.frame(0,0,2)
        colnames(fail)<-c("SID","Total Stim:Total Unstim", "KLH")
        for(i in len(unstim)){
                if((stim[i,"total"]/unstim[i,"total"]>=4) & (stim[i,"KLH"]<=3])){
                        pass<-rbind.data.frame(unstim[i,"SID"], stim[i,"total"]/unstim[i,"total"], stim[i,"KLH"])
                }
                else{
                        fail<-rbind.data.frame(unstim[i,"SID"], stim[i,"total"]/unstim[i,"total"], stim[i,"KLH"])    
                }
        }

        return(pass)
}


MBC_chec<-fun(data,)