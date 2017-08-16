# Changelog

## [0.9.1] - 2017-08-15

### Added


#### CivisML

- `civis_ml` wrapper for CivisML 1.1.
- Named civis_ml workflows: `civis_ml_sparse_logistic`, `civis_ml_gradient_boosting_classifier`, `civis_ml_random_forest_classifier`, `civis_ml_extra_trees_classifier`, `civis_ml_sparse_linear_regressor`, `civis_ml_sparse_ridge_regressor`,
`civis_ml_gradient_boosting_regressor`, `civis_ml_random_forest_regressor`, and
`civis_ml_extra_trees_regressor`.
- `civis_table`, `civis_file` used to indicate data sources for `civis_ml`
- `predict.civis_ml` runs a CivisML scoring job on platform for a given model and data.
- `fetch_logs` can be used to fetch logs from a model run.
- `fetch_oos_scores` can be used to return out of sample/fold scores from a model.
- `civis_ml_fetch_existing` returns an existing platform job.

#### IO

- `read_civis` reads a`"schema.table"`, a `sql("query")`, or a file id to a data frame.
- `read_civis` sql queries are read only.
- `write_civis`  uploads a data frame or local csv to Redshift.
- `write_civis_file` uploads a serialized R object or an unserialized local file to the files endpoint (S3).
- `query_civis` runs an arbitrary `"query"`, `sql("query")`, or a query id.
- `query_civis` only returns query meta data.
- `download_civis` downloads a`"schema.table"`, a `sql("query")`, or a file id to a file.
- `download_civis` can export in parallel using `split = TRUE`.
- A default database for all IO functions can be stored in `options(civis.default_db = "my_database")`.

#### Tables
- `refresh_table` can be used to refresh table meta data
- `transfer_table` can be used to transfer tables between redshift databases
- `get_table_id` can be used to retrieve a table id

#### dplyr

-  DBI interface: `dbWriteTable`, `dbSentStatement`, `dbReadTable`, `dbListTables`
- dplyr and dbplyr are suggested.

#### Reports
- `publish_rmd`, `publish_html` return the report id.
- Rmarkdown is the default option for `publish_rmd`.

#### Programming
- API responses are S3 objects.
- `print.civis_api` method for API responses hides attributes.
- `await` and `await_all` are provided for polling job/task completion.
- `await` and `await_all` use an exponential backoff retry time for polling if `.interval` is not set (the default).
- `await` and `await_all` throw a `civis_await_error` on platform errors, and print the platform error message along with job and run ids.
- `get_error` can be used to obtain additional debugging data from `civis_await_error` (platform errors).
- `await` and `await_all` throw a `civis_timeout_error` if `.timeout` was specified.
- `NULL` can be passed directly to the API.

#### Packaging
- New endpoints can be generated by reinstalling the package.
- Naming scheme for generated endpoints matches the Python client, e.g. `scripts_post_sql`
- `LICENCE` is now BSD-3.
- `CODE_OF_CONDUCT.md`
- `CHANGELOG.md`

#### Documentation

- IO vignette.
- Concurrent polling using futures and foreach vignette.
- Package website.


