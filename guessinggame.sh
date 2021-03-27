# function to request user input and to echo the user input
function getInput {
    read numFilesGuess
    echo "Your guess: $numFilesGuess"
}

echo "How many files are in the current directory? Please, type the number and press enter."
getInput

# Flag that indicates when the code is done (right guess -> keepAsking=false)
keepAsking=true

while $keepAsking
do
    # Counting the number of files in the current directory
    numFiles=$(ls | wc -l)
    # Comparing guess value to real value
    if [[ numFilesGuess -gt numFiles ]]
    then
        echo "Your guess is too high."
        echo "Try it again! Please, type the number and press enter."
        getInput
    elif [[ numFilesGuess -lt numFiles ]]
    then
        echo "Your guess is too low."
        echo "Try it again! Please, type the number and press enter."
        getInput
    else
        echo "Congrats, you guessed it right! There are $numFilesGuess file(s) in the current directory!"
        keepAsking=false
    fi
done
echo "End of program."