% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boin12_rds.R
\name{boin12_rds}
\alias{boin12_rds}
\title{Tabulate rank-based desirability scores for a BOIN12 trial}
\usage{
boin12_rds(
  sample_sizes,
  phi_t,
  phi_e,
  u1 = 100,
  u2,
  u3,
  u4 = 0,
  c_t = 0.95,
  c_e = 0.9,
  prior_alpha = 1,
  prior_beta = 1
)
}
\arguments{
\item{sample_sizes}{integer vector, cohort sample sizes to consider}

\item{phi_t}{Probability of toxicity threshold}

\item{phi_e}{Probability of efficacy threshold}

\item{u1}{utility of efficacy without toxicity, 100 by default}

\item{u2}{utility of no efficacy and no toxicity, between u1 and u4}

\item{u3}{utility of efficacy and toxicity, between u1 and u4}

\item{u4}{utility of toxicity without efficacy , 0 by default}

\item{c_t}{certainty required to flag excess toxicity, 0.95 by default}

\item{c_e}{certainty required to flag deficient efficacy, 0.9 by default}

\item{prior_alpha}{first shape param for prior on beta prior, 1 by default}

\item{prior_beta}{second shape param for prior on beta prior, 1 by default}
}
\value{
data.frame with columns Patients, Toxicity, Efficacy containing the
numbers of patients, patients with toxicitiy, and patients with efficacy;
Admissble, containing the character labels Admissble or Not Admissible;
RDS, containing a character label of the numerical desirability score or the
character string "E", where a combination is eliminated;
and RDS_x, containing the desirability scores as numbers, with NA where a
combination should be eliminated.
}
\description{
Tabulate rank-based desirability scores for a BOIN12 trial
}
\examples{
# Table 3 in Lin et al.
x <- boin12_rds(
  sample_sizes = c(0, 3, 6, 9),
  phi_t = 0.35,
  phi_e = 0.25,
  u1 = 100,
  u2 = 40,
  u3 = 60,
  u4 = 0,
  c_t = 0.95,
  c_e = 0.9,
  prior_alpha = 1,
  prior_beta = 1
)

}
\references{
Lin, R., Zhou, Y., Yan, F., Li, D., & Yuan, Y. (2020).
BOIN12: Bayesian optimal interval phase I/II trial design for utility-based
dose finding in immunotherapy and targeted therapies.
JCO Precision Oncology, 4, 1393-1402.
}
\author{
Bharat Bhushan, Kristian Brock
}
