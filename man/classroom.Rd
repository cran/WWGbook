\name{classroom}
\alias{classroom}
\docType{data}
\title{classroom data in Chapter 4}
\description{
   The Study of Instructional Improvement (SII; Hill, Rowan, and Ball, 2004) was 
   carried out by researchers at the University of Michigan to study the math achievement
   scores of first- and third-grade students in randomly selected classrooms from a national U.S. sample 
   of elementary schools. 
}
\usage{data(classroom)}
\format{
  A data frame with 1190 observations on the following 12 variables.
  \describe{
    \item{sex}{: Indicator variable (0 = boys, 1 = girls)}
    \item{minority}{: Indicator variable (0 = non-minority students, 1 = minority students) }
    \item{mathkind}{: Student math score in the spring of their kindergarten year}
    \item{mathgain}{: Student gain in math achievement score from the spring of kindergarten to the spring of first grade (the dependent variable)}
    \item{ses}{: Student socioeconomic status}
    \item{yearstea}{: First grade teacher years of teaching experience }
    \item{mathknow}{: First grade teacher mathematics content knowledge: based on a scale based composed of 30 items (higher values indicate higher content knowledge) }
    \item{housepov}{: Percentage of households in the neighborhood of the school below the poverty level }
    \item{mathprep}{: First grade teacher mathematics preparation: number of mathematics content and methods courses}
    \item{classid}{: Classroom ID number}
    \item{schoolid}{: School ID number}
    \item{childid}{: Student ID number}
    }
}
\references{
Hill, H.C., Rowan, B., and Ball, D.L. (In Press). Effect of Teacher's Mathematical Knowledge for Teaching on Student Achievement, 
American Educational Research Journal, Learning Mathematics for Teaching (LMT) Project.

West, B., Welch, K. & Galecki, A, Linear Mixed Models: A Practical Guide Using Statistical Software,
Chapman Hall / CRC Press, first edition, 2006.
}
\examples{
attach(classroom)

#### Boxplots for Figure 4.2
classroom.first8 <- classroom[classroom$schoolid <= 8,]
par(mfrow=c(4,2))
for (i in 1:8) 
{boxplot(classroom.first8$mathgain[classroom.first8$schoolid==i] ~ classroom.first8$classid[classroom.first8$schoolid==i],ylab="Mathgain", xlab="classid" )}

}


\keyword{datasets}

