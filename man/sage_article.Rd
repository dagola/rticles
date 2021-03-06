% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sage_article.R
\name{sage_article}
\alias{sage_article}
\title{Sage Journals format.}
\usage{
sage_article(..., highlight = NULL, citation_package = "natbib")
}
\arguments{
\item{...}{Additional arguments to \code{rmarkdown::pdf_document}}

\item{highlight}{Syntax highlighting style. Supported styles include
"default", "tango", "pygments", "kate", "monochrome", "espresso",
"zenburn", and "haddock". Pass \code{NULL} to prevent syntax highlighting.}

\item{citation_package}{The LaTeX package to process citations, \code{natbib}
or \code{biblatex}. Use \code{none} if neither package is to be used.}
}
\value{
R Markdown output format to pass to
  \code{\link[rmarkdown:render]{render}}
}
\description{
Format for creating submissions to Sage Journals. Based on the official Sage Journals
\href{https://uk.sagepub.com/sites/default/files/sage_latex_template_4.zip}{class}.
}
\details{
Possible arguments for the YAML header are:
\itemize{
  \item \code{title} title of the manuscript
  \item \code{runninghead} short author list for header
  \item \code{author} list of authors, containing \code{name} and \code{num}
  \item \code{address} list containing \code{num} and \code{org} for defining \code{author} affiliations
  \item \code{corrauth} corresponding author name and address
  \item \code{email} correspondence email
  \item \code{abstract} abstract, limited to 200 words
  \item \code{keywords} keywords for the artucle
  \item \code{bibliography} BibTeX \code{.bib} file name
  \item \code{classoption} options of the \code{sagej} class
 \item \code{header-includes}: custom additions to the header, before the \code{\\begin\{document\}} statement
 \item \code{include-after}: for including additional LaTeX code before the \code{\\end\{document\}} statement}
}
\examples{

\dontrun{
library(rmarkdown)
draft("MyArticle.Rmd", template = "sage_article", package = "rticles")
}

}
