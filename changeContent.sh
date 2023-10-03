#!/bin/bash
rm -r ./static
mkdir static
cp -r ../aws-modernization-workshop-base/static/ ./static

rm -r ./content
mkdir content
cp -r ../aws-modernization-workshop-base/content/ ./content



# Set the directory path where your .md files are located
directory="./content"

# Use the find command to locate .md files and loop through them
find "$directory" -type f -name "*.md" | while read -r file; do
  # Extract the base file name without the path
  filename=$(basename "$file")
  # Rename the file by replacing ".md" with ".en.md"
  new_filename="${filename/.md/.en.md}"
  # Perform the rename
  mv "$file" "$(dirname "$file")/$new_filename"
  echo "Renamed: $filename -> $new_filename"
done

#rename all _index.en.md files to index.en.md files
find . -type f -name "_index.en.md" -exec sh -c 'mv "$0" "${0/_index.en.md/index.en.md}"'  {} \;

#Now fix the /static content folder structure issue. add /static before /images
find "$directory" -type f -exec sed -i '' -e 's|(/images|(/static/images|g' {} \;

#Now execute the build
./preview_build -input ./solace-eda-x-aws-market-data-consumption/





