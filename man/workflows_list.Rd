% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{workflows_list}
\alias{workflows_list}
\title{List Workflows}
\usage{
workflows_list(
  hidden = NULL,
  archived = NULL,
  author = NULL,
  limit = NULL,
  page_num = NULL,
  order = NULL,
  order_dir = NULL
)
}
\arguments{
\item{hidden}{boolean optional. If specified to be true, returns hidden items. Defaults to false, returning non-hidden items.}

\item{archived}{string optional. The archival status of the requested item(s).}

\item{author}{string optional. If specified, return workflows from this author. It accepts a comma-separated list of author ids.}

\item{limit}{integer optional. Number of results to return. Defaults to 20. Maximum allowed is 50.}

\item{page_num}{integer optional. Page number of the results to return. Defaults to the first page, 1.}

\item{order}{string optional. The field on which to order the result set. Defaults to updated_at. Must be one of: updated_at, name, created_at.}

\item{order_dir}{string optional. Direction in which to sort, either asc (ascending) or desc (descending) defaulting to desc.}
}
\value{
An array containing the following fields:
\item{id}{integer, The ID for this workflow.}
\item{name}{string, The name of this workflow.}
\item{description}{string, A description of the workflow.}
\item{valid}{boolean, The validity of the workflow definition.}
\item{fileId}{string, The file id for the s3 file containing the workflow configuration.}
\item{user}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{state}{string, The state of the workflow. State is "running" if any execution is running, otherwise reflects most recent execution state.}
\item{schedule}{list, A list containing the following elements: 
\itemize{
\item scheduled boolean, If the item is scheduled.
\item scheduledDays array, Day based on numeric value starting at 0 for Sunday.
\item scheduledHours array, Hours of the day it is scheduled on.
\item scheduledMinutes array, Minutes of the day it is scheduled on.
\item scheduledRunsPerHour integer, Alternative to scheduled minutes, number of times to run per hour.
}}
\item{timeZone}{string, The time zone of this workflow.}
\item{nextExecutionAt}{string, The time of the next scheduled execution.}
\item{archived}{string, The archival status of the requested item(s).}
\item{createdAt}{string, }
\item{updatedAt}{string, }
}
\description{
List Workflows
}
