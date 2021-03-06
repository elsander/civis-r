% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{tables_post_enhancements_table_matchings}
\alias{tables_post_enhancements_table_matchings}
\title{Match person records against an arbitrary Redshift table}
\usage{
tables_post_enhancements_table_matchings(
  source_table_id,
  threshold,
  match_table_id,
  max_matches = NULL
)
}
\arguments{
\item{source_table_id}{integer required. The ID of the table to be enhanced.}

\item{threshold}{number required. The confidence threshold which must be met for two individuals to be declared a match. Must be less than or equal to 1 and greater than or equal to 0.}

\item{match_table_id}{integer required. The ID of the Redshift table to match against.}

\item{max_matches}{integer optional. The maximum number of individuals a person may be matched with.A value of 0 indicates that all matches should be returned.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID of the enhancement.}
\item{sourceTableId}{integer, The ID of the table that was enhanced.}
\item{state}{string, The state of the enhancement, one of 'queued' 'running' 'succeeded' 'failed' or 'cancelled'.}
\item{enhancedTableSchema}{string, The schema name of the table created by the enhancement.}
\item{enhancedTableName}{string, The name of the table created by the enhancement.}
\item{threshold}{number, The confidence threshold which must be met for two individuals to be declared a match. Must be less than or equal to 1 and greater than or equal to 0.}
\item{maxMatches}{integer, The maximum number of individuals a person may be matched with.A value of 0 indicates that all matches should be returned.}
\item{matchTableId}{integer, The ID of the Redshift table to match against.}
}
\description{
Match person records against an arbitrary Redshift table
}
