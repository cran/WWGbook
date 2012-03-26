\name{rat.brain}
\alias{rat.brain}
\docType{data}
\title{rat.brain data in Chapter 5}
\description{
   The data used in this example were originally reported by Douglas, et al. (2004). The aim of their experiment was to examine nucleotide activation (guanine nucleotide bonding) in seven different brain nuclei (i.e., brain regions) among five adult male rats. 
}
\usage{data(rat.brain)}
\format{
  A data frame with 30 observations on the following 4 variables.
  \describe{
    \item{animal}{: Unique identifier for each rat}
    \item{treatment}{: Level of drug treatment (1 = Basal, 2 = Carbachol)}
    \item{region}{: Brain nucleus (1 = BST, 2 = LS, 3 = VDB)}
    \item{activate}{: Nucleotide activation (the dependent variable)}
   }
}
\references{
Douglas, C.L., Demarco, G.J., Baghdoyan, H.A., and Lydic, R, Pontine and basal
forebrain cholinergic interaction: implications for sleep and breathing,
Respiratory Physiology and Neurobiology, 143, 251, 2004.

West, B., Welch, K. & Galecki, A, Linear Mixed Models: A Practical Guide Using Statistical Software,
Chapman Hall / CRC Press, first edition, 2006.
}
\examples{
attach(rat.brain)

region.f <- region
region.f[region == 1] <- 1
region.f[region == 2] <- 2
region.f[region == 3] <- 0
region.f <- factor(region.f)
treat <- treatment
treat[treatment == 1] <- 0
treat[treatment == 2] <- 1
treat <- factor(treat)
detach(rat.brain)
rat.brain <- data.frame(rat.brain, region.f, treat)
str(rat.brain)
}

\keyword{datasets}

