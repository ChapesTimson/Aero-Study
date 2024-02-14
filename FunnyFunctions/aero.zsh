aero() {
    # Path to your text file containing quotes
    local quotes_file="$HOME/.zsh/jokes/aero_quotes.txt"

    # Check if the file exists
    if [[ ! -f $quotes_file ]]; then
        echo "Error: Quotes file not found."
        return 1
    fi

    # Count the number of lines in the file
    local num_lines=$(wc -l < "$quotes_file")

    # Generate a random number within the range of lines
    local random_line=$((RANDOM % num_lines + 1))

    # Get the quote from the random line
    local quote=$(sed -n "${random_line}p" "$quotes_file")

    # Use cowsay to display the quote
    cowsay "$quote"
}

