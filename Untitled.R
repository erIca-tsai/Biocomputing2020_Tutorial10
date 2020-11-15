##Exercise 8 - Using control structures in R

## Question 1
## Analysis of data surrounding sports teams has grown into a major business for the teams themselves and the media. One cool summary plot that media outlets generate to summarize a game, in this case basketball, is a line graph depicting the cumulative score for each team as a function of time in the game

##Plot Data
##read UWvMSU_1-22-13 file
UWvMSU<-read.table("UWvMSU_1-22-13.txt")

## creating cumulative scores matrix for each team
##Part 1
scoreUW <- sum(UWvMSU$team== "UW")
scoreMSU <- sum(UWvMSU$team=="MSU")
##Part 2
cumulativeSumUW <- matrix(data=0,nrow=50)
cumulativeSumMSU <- matrix(data=0,nrow=50)

A<-matrix(0,nrow=0,ncol = 3)

for(i in 1:nrow(UWvMSU)){
  if(UWvMSU$team[i]=="UW"){
    SumUW=SumUW+UWvMSU$Score[i]
  }
  else{
    SumMSU=SumMSU+UWvMSU$Score
  }
  matrixes<-rbind(A,B(UWvMSU$time[i],SumUW,SumMSU))
}
colnames(A)<-B("time","UW","MSU")

##plotting graph
### plotting UW
plot(A[,1],G[,2],type='l',col="blue")
## plotting MSU on same graph
lines(A[,1],A[,3],col="red")

#Question2

##genearte a random integer 1-100
RandomNumber = sample(1:100,1,replace=FALSE)
N <- sample(choices,size=1)
for(i in 1:10){
  guess<- readline(prompt="Enter an integer between 1 and 100")
  if(guess>N){
    print("Lower")
  }else if (guess < N){
    print("Higher")
    }else{
      print("Correct!")
      break
  }
}



