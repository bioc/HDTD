#' @export
print.meanmat.hat <- function(x, ...) {
    cat("ESTIMATION OF THE MEAN MATRIX", "\n")
    cat("Sample size      =", x$N, "\n")
    cat("Row variables    =", x$n.rows, "\n")
    cat("Column variables =", x$n.cols, "\n")
    cat("\nEstimated mean matrix [1:5, 1:5] =\n")
    print(round(x$estmeanmat[seq_len(min(5, x$n.rows)), 
                             seq_len(min(5, x$n.cols))], 
                4))
}
