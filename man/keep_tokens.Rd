% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize_embeddings.R
\name{keep_tokens}
\alias{keep_tokens}
\title{Filter Tokens}
\usage{
keep_tokens(embedding_df, tokens = "[CLS]")
}
\arguments{
\item{embedding_df}{A tbl_df of embedding vectors; the output of
\code{\link[RBERT]{extract_features}}.}

\item{tokens}{Character vector; which tokens to keep.}
}
\value{
The input tbl_df of embedding vectors, with the specified filtering
  applied.
}
\description{
Keeps only specified tokens in the given table of embeddings.
}
\examples{
\dontrun{
# assuming something like the following has been run:
# feats <- RBERT::extract_features(...) # See RBERT documentation
# Then:
embeddings_layer12_cls <- feats$output \%>\%
    filter_layer_embeddings(layer_indices = 12L) \%>\%
    keep_tokens("[CLS]")
}
}
