#git help: 
#git clone #pulls in clone using git URL
#git status #see dif between your file and main
#git add _____ #add new files or data to staging area (to be commited)
#git commit -m "_____" # commit locks in from staging area  "-m" means you're putting message for commit (after in quotes)
#git push #committed changes still on machine, push brings them to repository
#git pull #pulls from github repository (make sure in same directory on computer as github cloned repository)
#branches are meant eventually to be merged, forks are new things

pull_subjects(data) #function to pull subjects in SMIC cl9 and lb9...working on it

for(i in 1:length(SMIC_cl9$sid)){if(is.integer(SMIC_cl9$sid[i])==TRUE){subject_cl9<-c(SMIC_cl9$sid[i])}} 