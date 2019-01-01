# setwd()

# List all files with .text extension in the current directory
file_names<-list.files(pattern="*\\.txt")

# Create file names. E.g. Files that start with 'CB' into 'RI_CB'
gsub("^CB", "RI_CB", file_names)->new_file_names
# e.g. gsub("^CH", "RI_CH", "CHCH_1.text")
# e.g. gsub("CH", "RI_CH", "CHCH_1.text")


# Rename files and loop them using the 'for' loop
for(i in 1:length(file_names){
file.rename(file_names[i], new_file_names[i])
}
