\name{veneer}
\alias{veneer}
\docType{data}
\title{veneer data in Chapter 7}
\description{
   The Dental Veneer data were collected by researchers at the University of Michigan Dental School, in a study investigating the impact of veneer placement on subsequent gingival (gum) health among adult patients (Ocampo, 2005). 
}
\usage{data(veneer)}
\format{
  A data frame with 110 observations on the following 7 variables.
  \describe{
    \item{patient}{: Patient ID variable (Level 3 ID)}
    \item{tooth}{: Tooth number (Level 2 ID)}
    \item{age}{: Age of patient when veneer was placed, constant for all observations on the same patient}
    \item{base.gcf}{: Baseline measure of Gingival Crevicular Fluid for the tooth, constant for all observations on the same tooth}
    \item{cda}{: Average contour difference in the tooth after veneer placement, constant for all observations on the same tooth}
    \item{time}{: Time points of longitudinal measures (3 = Three Months, 6 = Six Months)}
    \item{gcf}{: Gingival Crevicular Fluid adjacent to the tooth, collected at each time point (Dependent Variable)}
   }
}
\references{
Ocampo, J., Data taken from M.S. Thesis, Effect of Porcelain Laminate Contour on
Gingival Inflammation, University of Michigan School of Dentistry, 2005

West, B., Welch, K. & Galecki, A, Linear Mixed Models: A Practical Guide Using Statistical Software,
Chapman Hall / CRC Press, first edition, 2006.
}
\examples{
attach(veneer)

#### Figure 7.2: Raw GCF values for each tooth vs. time, by patient. Panels are ordered by patient age.
age.f <- factor(age)
time.f <- factor(time)
tooth.f <- factor(tooth)

veneer <- data.frame(veneer,age.f, time.f, tooth.f)
sort(age.f)


library(lattice)  # Load the library for trellis graphics.

# Load the nlme library, which is required for the 
# plots below as well as for subsequent models.
library(nlme)

veneer.g1 <- groupedData(gcf ~ time | tooth.f, 
outer = ~ age.f, data = veneer)
plot(veneer.g1, display = "tooth", outer = TRUE, aspect = 2, key = FALSE, xlab = "time", ylab = "GCF", main="Panels are ordered by patient age." ,layout=c(4,3)) 

}

\keyword{datasets}

