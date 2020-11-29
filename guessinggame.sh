# Ask user GUESS how many files in current directory
# Tell them too high or too low
# If correct, congratulate then end
# Program keep running until user guessed correctly
# At least 1 function, 1 loop and 1 if
#

echo "Make a guess at how many files are in the current directory. Don't worry, You will get it right if you keep trying!"
echo "Ever tried, ever failed, no matter, try again, fail again fail better!"
 
 
# Write a funtion for inputs 
function ask {
  echo "Make a guess at how many files are in the current directory?"
  read inputg 
# Ls command and pipe with wc-l command --> # of lines == # of files
  File_number=$(ls -1 | wc -l)
}

ask
while [[ $inputg -ne $File_number ]]
do 
  if [[ $inputg -ge $File_number ]] 
  then
    echo "Try a smaller number."
  else [[ $inputg -le $File_number ]]
    echo "Try a bigger number." 
  fi
  ask
done

echo "You got it! These are the $File_number files in the current directory: "
echo "===" && ls