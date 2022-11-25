printf "\n All the processes\n";
ps -aux;
printf "\n*******************************\n";

printf "\n Heighst cpu usage\n";
ps aux --sort -%cpu | head -2
printf "\n*******************************\n";

printf "\n Heighst memory usage\n";
ps aux --sort -%mem | head -2
printf "\n*******************************\n";

printf "\n kill the process by process ID\n";
printf "Please enter the PID:\n"
read pid
kill -9 $pid
printf "\n*******************************\n";
printf "\n Display all the processes again to verify:\n"
ps -aux

printf "\n*******************************\n";
printf "\n list all the files in the current directory that starts with a number\n";
list=$(ls -1 .|grep -E "^[0-9].*")
if [[ $? != 0 ]]; then
    echo "No files Found"
elif [[ $list ]]; then
    echo "Files found."
    echo $list 
else
    echo "No files found."
fi
printf "\n*******************************\n";
