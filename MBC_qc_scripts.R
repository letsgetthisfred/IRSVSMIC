#Qual Check MBCs
#want a stim to unstim ratio of >=4 (taken from Falkard 2019), and KLH =<3


check_ratio<-function(stim, unstim, ratio_threshold=4, KLH_threshold=3){ #this feels inelegant,but perhaps serviceable. would have to do x3 unless can create matrix where "pass" values added by index
        pass<-data.frame(SID="",Total_Stim="", Total_Unstim="", KLH="")
        #colnames(pass)<-c("SID","Total Stim", "Total Unstim", "KLH")
        fail<-data.frame(SID="",Total_Stim="", Total_Unstim="", KLH="")
        #colnames(fail)<-c("SID","Total Stim","Total Unstim", "KLH")
        for(i in (nrow(unstim$SID)-1)){ #the minus one is a quick way to get around empty final row in input args
                for_output<-data.frame(SID= "",Total_Stim= "", Total_Unstim= "", KLH="") #data frame with same dimensions as outputs, within for loop...for each i will add output here before rbinding to pass or fail
                if(((stim[i,"total"]/unstim[i,"total"])>=ratio_threshold) & (stim[i,"KLH"]<=KLH_threshold)){
                        for_output<-c(unstim[i,"SID"], stim[i,"total"]/unstim[i,"total"], stim[i,"KLH"])
                        pass<-rbind.data.frame(pass, for_output)
                }
                else{
                        for_output<-c(unstim[i,"SID"], stim[i,"total"]/unstim[i,"total"], stim[i,"KLH"])
                        #fail<-rbind.data.frame(unstim[i,"SID"], stim[i,"total"], unstim[i,"total"], stim[i,"KLH"])    
                        fail<-rbind.data.frame(fail, for_output)
                        }
        }

        print(pass)
}
