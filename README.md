:construction: *work in progress* :construction:


# MDS clustering

**Clusterise the MDS disease by mutation and cytogenetics feature and observe clinical features distribution by cluster.**

***


## Requirements

Built with R version 3.5.1

- Nicola Roberts HDP R package ([GitHub link](https://github.com/nicolaroberts/hdp)) which implements the hierarchical Dirichlet process:  
    ```R
    devtools::install_github("nicolaroberts/hdp", build_vignettes = TRUE)
    ```

- Various R libraries:
    - `ggplot2`
    - `reshape2`
    - `gridExtra`
    - `tibble`
    - `heatmap3`
    - `survminer`
    - `survival`
    - `RColorBrewer`
    - `IRdisplay`


## todo list

- [ ] try dataset with all genes and cytogenetics
- [x] top genes by component
- [ ] understand theory better
- [ ] try other clustering method
- [ ] play with hdp parameters
- [ ] improve heatmap plot
- [x] axes and title for each plot
- [x] split genes by hotspots

## temp

scp -r guilminp@lski1997:/Users/guilminp/Documents/MDS_clustering .
