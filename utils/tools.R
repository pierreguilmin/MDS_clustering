#################################
### tools.R #####################
#################################
#
# This file gather some useful R tools function
#

library('ggplot2')


get_table <- function(data, nrows, add_total_count = TRUE) {
    # Print a custom sorted table (count and frequency) of a categorical feature
    # → Arguments
    #     - data           : one dimensional vector
    #     - nrows          : if specified, return only the first nrows of the resulting table
    #     - add_total_count: if TRUE, add a final row showing the total count

    count_table <- rev(sort(table(data)))
    prop_table  <- round(prop.table(count_table) * 100, 1)
    
    result <- data.frame('values' = names(count_table),
                         'count'  = as.vector(count_table),
                         'freq'   = paste0(as.character(prop_table), '%'))

    if (! missing(nrows))
        result = head(result, nrows)

    if (add_total_count)
        result <- rbind(result, data.frame('values' = '-- total --',
                                            'count'  = length(data),
                                            'freq'   = '100%'))

    return (result)
}


set_notebook_plot_size <- function(width = 6, height = 3) {
    # Set the plot size in jupyter notebook
    # → Arguments
    #     - width
    #     - height

    options(repr.plot.width = width, repr.plot.height = height)
}


tilt_x_label <- function(angle) {
    # Tilt the x label by a given number of degrees
    # → Ex : ggplot() ... + tilt_x_label(45)
    # → Arguments
    #     - angle: angle in degree by which to rotate x label

    return (theme(axis.text.x = element_text(angle = angle, hjust = 1)))
}


print_and_flush <- function(string) {
    # Print a string in stdout and flush the result (useful to print in Jupyter Notebook in for loops)
    # → Arguments
    #     - string: string to print

    cat(string)
    flush.console()
}


print_size <- function(data) {
    # Print the size (n_row x n_column) of a given dataframe
    # → Ex : print_size(my_data_frame) ⟹ Size of my_data_frame: 2876 x 32
    # → Arguments
    #     - data

    cat(sprintf('Size of %s: %d x %d\n', deparse(substitute(data)), nrow(data), ncol(data)))
}
