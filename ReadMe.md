---------------------------------------------------------
The Project
---------------------------------------------------------
This activity was carried out for the final assignment of the Coursera Course: Getting and Cleansing Data


The below files are availabe in the repository:

ReadMe.md
  Provides details on the files available and their descriptions

CodeBook.md
  Provides details on:
    Dataset used and where to find them
    Variables used, units and a bried introduction on calculations of observations
    Methodology used for final file output as requested in the project
    Column Sequence in final output file

run_analysis.R
  The script works if the UCI HAR Dataset is available in the working directory
  Final result: A file with name "transformed_dataset.txt" will be created in the working directory
  Step details available as comments inline
  Overview methodology available in CodeBook.md


ColumnNameExtraction.R
  This is to facilitate in the final codebook development
  This script is to get a text file with the column names of the final dataset after execution of "run_analysis.R"
  This will only work if the final dataset is available in environment