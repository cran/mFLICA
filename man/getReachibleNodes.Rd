% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getReachibleNodes.R
\name{getReachibleNodes}
\alias{getReachibleNodes}
\title{getReachibleNodes function}
\usage{
getReachibleNodes(adjMat, targetNode)
}
\arguments{
\item{adjMat}{is an adjacency matrix of a following network of which its elements are binary: zero for no edge, and one for having an edge.}

\item{targetNode}{is a node in a graph that we want to find a set of nodes that can reach this target node via some paths.}
}
\value{
This function returns a set of node IDs \code{followers} that have some directed path to a node \code{targetNode}.
}
\description{
getReachibleNodes is a support function for inferring reachable nodes that have some directed path to a node \code{targetNode}.
}
\examples{
# Given an example of adjacency matrix
A<-matrix(FALSE,5,5)
A[2,1]<-TRUE
A[c(3,4),2]<-TRUE
A[5,3]<-TRUE
# Get a set of reachable nodes of targetNode.

followers<-getReachibleNodes(adjMat=A,targetNode=1)$followers

}
