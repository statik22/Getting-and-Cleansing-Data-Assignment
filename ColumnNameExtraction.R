##This is to facilitate in the final codebook development
##This script is to get a text file with the column names of the final dataset after execution of "run_analysis.R"
##This will only work if the final dataset is available in environment

column_names <- as.list(names(dataset_transformed))
write_lines(column_names, "column_names.txt")