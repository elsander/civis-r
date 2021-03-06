% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{models_patch}
\alias{models_patch}
\title{Update model configuration}
\usage{
models_patch(
  id,
  table_name = NULL,
  database_id = NULL,
  credential_id = NULL,
  model_name = NULL,
  description = NULL,
  interaction_terms = NULL,
  box_cox_transformation = NULL,
  model_type_id = NULL,
  primary_key = NULL,
  dependent_variable = NULL,
  dependent_variable_order = NULL,
  excluded_columns = NULL,
  limiting_sql = NULL,
  active_build_id = NULL,
  cross_validation_parameters = NULL,
  number_of_folds = NULL,
  notifications = NULL,
  schedule = NULL,
  parent_id = NULL,
  time_zone = NULL
)
}
\arguments{
\item{id}{integer required. The ID of the model.}

\item{table_name}{string optional. The qualified name of the table containing the training set from which to build the model.}

\item{database_id}{integer optional. The ID of the database holding the training set table used to build the model.}

\item{credential_id}{integer optional. The ID of the credential used to read the target table. Defaults to the user's default credential.}

\item{model_name}{string optional. The name of the model.}

\item{description}{string optional. A description of the model.}

\item{interaction_terms}{boolean optional. Whether to search for interaction terms.}

\item{box_cox_transformation}{boolean optional. Whether to transform data so that it assumes a normal distribution. Valid only with continuous models.}

\item{model_type_id}{integer optional. The ID of the model's type.}

\item{primary_key}{string optional. The unique ID (primary key) of the training dataset.}

\item{dependent_variable}{string optional. The dependent variable of the training dataset.}

\item{dependent_variable_order}{array optional. The order of dependent variables, especially useful for Ordinal Modeling.}

\item{excluded_columns}{array optional. A list of columns which will be considered ineligible to be independent variables.}

\item{limiting_sql}{string optional. A custom SQL WHERE clause used to filter the rows used to build the model. (e.g., "id > 105").}

\item{active_build_id}{integer optional. The ID of the current active build, the build used to score predictions.}

\item{cross_validation_parameters}{list optional. Cross validation parameter grid for tree methods, e.g. {"n_estimators": [100, 200, 500], "learning_rate": [0.01, 0.1], "max_depth": [2, 3]}.}

\item{number_of_folds}{integer optional. Number of folds for cross validation. Default value is 5.}

\item{notifications}{list optional. A list containing the following elements: 
\itemize{
\item urls array, URLs to receive a POST request at job completion
\item successEmailSubject string, Custom subject line for success e-mail.
\item successEmailBody string, Custom body text for success e-mail, written in Markdown.
\item successEmailAddresses array, Addresses to notify by e-mail when the job completes successfully.
\item successEmailFromName string, Name from which success emails are sent; defaults to "Civis."
\item successEmailReplyTo string, Address for replies to success emails; defaults to the author of the job.
\item failureEmailAddresses array, Addresses to notify by e-mail when the job fails.
\item stallWarningMinutes integer, Stall warning emails will be sent after this amount of minutes.
\item successOn boolean, If success email notifications are on.
\item failureOn boolean, If failure email notifications are on.
}}

\item{schedule}{list optional. A list containing the following elements: 
\itemize{
\item scheduled boolean, If the item is scheduled.
\item scheduledDays array, Day based on numeric value starting at 0 for Sunday.
\item scheduledHours array, Hours of the day it is scheduled on.
\item scheduledMinutes array, Minutes of the day it is scheduled on.
\item scheduledRunsPerHour integer, Alternative to scheduled minutes, number of times to run per hour.
}}

\item{parent_id}{integer optional. The ID of the parent job that will trigger this model.}

\item{time_zone}{string optional. The time zone of this model.}
}
\value{
An empty HTTP response
}
\description{
Update model configuration
}
