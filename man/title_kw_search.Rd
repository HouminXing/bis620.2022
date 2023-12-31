% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/title_kw_search.R
\name{title_kw_search}
\alias{title_kw_search}
\title{title_kw_search}
\usage{
title_kw_search(studies, sponsor_type, status_type, kw)
}
\arguments{
\item{studies}{A data frame containing the details of studies.}

\item{sponsor_type}{A variable representing the sponsor type to filter by. Default is 1.}

\item{status_type}{A variable representing the status type to filter by. Default is 1.}

\item{kw}{A keyword to search for in study titles.}
}
\value{
A filtered dataset of studies matching the specified criteria.
}
\description{
This function searches for studies in a given dataset based on keyword matching in the "brief_title" column.
It allows optional filtering based on sponsor type and status type.
}
\details{
Title Keyword Search
}
