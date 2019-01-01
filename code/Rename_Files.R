# setwd()

# List all files with .text extension in the current directory
file_names<-list.files(pattern="*\\.txt")

# Create file names. E.g. Files that start with 'CB' into 'RI_CB'
do.call("rbind", lapply(file_names, function(x){ifelse(grepl("^CH", x), paste0("RI", x), paste0("RD", x))}))->new_file_names
# gsub("^CH", "RICH", file_names)->new_file_names
# gsub("^GG", "RDGG", new_file_names)->new_file_names
# e.g. gsub("^CH", "RI_CH", "CHCH_1.text")
# e.g. gsub("CH", "RI_CH", "CHCH_1.text")

# Rename files and loop them using the 'for' loop
for(i in 1:length(file_names)){
file.rename(file_names[i], new_file_names[i])
}
