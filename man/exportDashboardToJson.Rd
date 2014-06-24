\name{exportDashboardToJson}
\alias{exportDashboardToJson}
\title{exportDashboardToJson}
\usage{
exportDashboardToJson(connectionDetails, cdmSchema, resultsSchema,
  outputPath = getwd())
}
\arguments{
  \item{connectionDetails}{An R object of type
  ConnectionDetail (details for the function that contains
  server info, database type, optionally username/password,
  port)}

  \item{cdmSchema}{Name of the database schema that
  contains the vocabulary files}

  \item{resultsSchema}{Name of the database schema that
  contains the Achilles analysis files. Default is
  cdmSchema}

  \item{outputPath}{A folder location to save the JSON
  files. Default is current working folder}
}
\value{
none
}
\description{
\code{exportDashboardToJson} Exports Achilles Dashboard
report into a JSON form for reports.
}
\details{
Creates individual files for Dashboard report found in
Achilles.Web. NOTE: This function reads the results from
the other exports and aggregates them into a single file.
If other reports are not genreated, this function will
fail.
}
\examples{
\dontrun{
  connectionDetails <- createConnectionDetails(dbms="sql server", server="yourserver")
  exportDashboardToJson(connectionDetails, cdmSchema="cdm4_sim", outputPath="your/output/path")
}
}
