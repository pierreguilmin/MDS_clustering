# MDS clustering

**Clusterise the MDS disease by mutation and cytogenetics features and observe clinical features distribution across clusters.**

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
    - `survminer`
    - `survival`
    - `glmnet`
    - `RColorBrewer`
    - `IRdisplay`


## todo list

- [x] improve heatmap plot
- [x] axes and title for each plot
- [x] split genes by hotspots
- [x] top genes by component
- [ ] try dataset with all genes and cytogenetics
- [ ] understand theory better
- [ ] try other clustering method
- [ ] play with hdp parameters
