\name{autism}
\alias{autism}
\docType{data}
\title{autism data in Chapter 6}
\description{
   The data comes from researchers at the University of Michigan as part of a prospective longitudinal study of 214 children.
}
\usage{data(autism)}
\format{
  A data frame with 612 observations on the following 4 variables.
  \describe{
    \item{age}{: Age in years (2, 3, 5, 9, 13); the time variable}
    \item{vsae}{: Vineland Socialization Age Equivalent: parent-reported socialization, the dependent variable measured at each age}
    \item{sicdegp}{: Sequenced Inventory of Communication Development Expressive Group: categorized expressive language score at age 2 years (1 = Low, 2 = Medium, 3 = High)}
    \item{childid}{: Unique child identifier}
    }
}

\references{
Oti, R., Anderson, D., Risi, S., Pickles, A. & Lord, C., Social Trajectories Among Individuals with Autism Spectrum Disorders, 
Developmental Psychopathology (under review), 2006.

West, B., Welch, K. & Galecki, A, Linear Mixed Models: A Practical Guide Using Statistical Software,
Chapman Hall / CRC Press, first edition, 2006.
}
\examples{
attach(autism)
sicdegp.f <- factor(sicdegp)
age.f <- factor(age)
detach(autism)

# Add the new variables to a new data frame object.
autism.updated <- data.frame(autism, sicdegp.f, age.f)
dim(autism.updated)
names(autism.updated)

}


\keyword{datasets}

