

# Define the field to sort by (either %CPU or %MEM)
SORT_BY="%CPU"

# Define the file to save the output
OUTPUT_FILE="top_output.txt"

CPU_THRESHOLD=50

# Run top command and save the output to a file
top -b -n 1 > "$OUTPUT_FILE"

# Sort the saved output file by the defined field
sort -r -k1,1 "$OUTPUT_FILE" > "${OUTPUT_FILE}.sorted"

# Check if any process exceeds the CPU threshold

rm "$OUTPUT_FILE"







