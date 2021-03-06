
############################################################################################################################################
#																																		   #
#						                            START OF CODE																		   #
#																																		   #
############################################################################################################################################

# Install R version >3.4.1 and RStudioversion > 1.0.153

# Copy from here

setup_microbiome_analysis <- function(){
  
  .packages = c("ape", 
                "gridExtra", 
                "picante", 
                "data.table", 
                "RColorBrewer", 
                "DT", 
                "reshape", 
                "reshape2", 
                "magrittr", 
                "markdown",
                "ggpubr", 
                "tibble", 
                "pheatmap", 
                "dplyr", 
                "viridis", 
                "devtools", 
                "rmdformats",
                "intergraph",
                "network",
                "igraph",
                "ggplot2", 
                "gridExtra", 
                "knitr", 
                "vegan", 
                "plyr", 
                "dplyr",
                "ggrepel", 
                "ggnetwork", 
                "ade4", 
                "rmarkdown",
                "formatR",
                "caTools",
			"GGally")
  
  .bioc_packages <- c("phyloseq",
                      "microbiome", 
                      "phangorn", 
                      "genefilter")
  if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
	
  # Install CRAN packages (if not already installed)
  .inst <- .packages %in% installed.packages()
  if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])

  .inst <- .bioc_packages %in% installed.packages()
  if(any(!.inst)) {
    BiocManager::install(.bioc_packages[!.inst])
  }
  
  
  if (!("microbiomeutilities"  %in% installed.packages())) {
    devtools::install_github("microsud/microbiomeutilities")
  }
  
  if (!("SpiecEasi"  %in% installed.packages())) {
    devtools::install_github("zdk123/SpiecEasi")
  }
  
  if (!("ggnet"  %in% installed.packages())) {
    devtools::install_github("briatte/ggnet")
  }
  
  message("If there was no error then you are ready to do microbiome data analysis")
  
}

setup_microbiome_analysis()

# Copy until here previous line!

####################################################END OF CODE###########################################################################

