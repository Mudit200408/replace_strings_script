#!/bin/bash

# Check if at least one argument is provided (the root directory to start the search)
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 root_directory"
    exit 1
fi

# Root directory from where to start searching
ROOT_DIR=$1

# Use find to locate all file.xml files and sed to perform the replacement

#Value-replace is the string you want to replace
#Value is the value us want instead of Value-replace
#Replace files.xml with the filename in which you want to make changes
#Example "find "$ROOT_DIR" -type f -name "strings.xml" -exec sed -i 's/Lineage/Pixelstar/g' {} +"
#This will replace all the occurences of 'Lineage' with 'Pixelstar' in all the 'strings.xml'

find "$ROOT_DIR" -type f -name "file.xml" -exec sed -i 's/Value-replace/Value/g' {} +

echo "Replacement complete."
#!/bin/bash
