\name{ratpup}
\alias{ratpup}
\docType{data}
\title{ratpup data in Chapter 3}
\description{
   The data come from a study in which 30 female rats were randomly assigned to receive one of three doses (High, Low, or Control) of an experimental compound.
}
\usage{data(ratpup)}
\format{
  A data frame with 322 observations on the following 6 variables.
  \describe{
    \item{pup.id}{: Unique identifier for each rat pup}
    \item{weight}{: Birth weight of the rat pup (the dependent variable)}
    \item{sex}{: Sex of the rat pup (Male, Female)}
    \item{litter}{: Litter ID number}
    \item{litsize}{: Litter size (i.e., number of pups per litter)}
    \item{treatment}{: Dose level of the experimental compound assigned to the litter (High, Low, Control)}
    }
}
\references{
Pinheiro, J.C. and Bates, D.M., Mixed-effects models in S and S-PLUS, Springer-Verlag Inc., Berlin, New York, 2000.

West, B., Welch, K. & Galecki, A, Linear Mixed Models: A Practical Guide Using Statistical Software,
Chapman Hall / CRC Press, first edition, 2006.
}
\examples{
str(ratpup)
}

\keyword{datasets}

