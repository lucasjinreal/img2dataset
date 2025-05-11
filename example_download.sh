#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Missing directory argument" >&2
    echo "Usage: $0 <directory>" >&2
    exit 1
fi

input_dir="$1"
output_folder="./your_dataset"
parquet_pattern="*.parquet"

#!/bin/bash

# Validate input directory argument
if [ -z "$1" ]; then
    echo "Error: Missing directory argument" >&2
    echo "Usage: $0 <input_directory>" >&2
    exit 1
fi

input_dir="$1"
output_folder="./your_dataset"

# urls=$(find "$input_dir" -type f -name '*.parquet')

mllmdata download --url_list $input_dir \
    --input_format "parquet" \
    --url_col "image_url" \
    --caption_col "caption" \
    --output_folder "$output_folder" \
    --processes_count 5 \
    --thread_count 16 \
    --resize_mode=no
