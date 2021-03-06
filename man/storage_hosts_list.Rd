% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{storage_hosts_list}
\alias{storage_hosts_list}
\title{List the storage hosts}
\usage{
storage_hosts_list()
}
\value{
An array containing the following fields:
\item{id}{integer, The ID of the storage host.}
\item{name}{string, The human readable name for the storage host.}
\item{provider}{string, The storage provider.One of: s3.}
\item{bucket}{string, The bucket for this storage host.}
\item{s3Options}{list, A list containing the following elements: 
\itemize{
\item region string, The region for this storage host (ex. "us-east-1")
}}
}
\description{
List the storage hosts
}
