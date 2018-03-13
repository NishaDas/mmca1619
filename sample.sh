printf "
Enter your choice
1) Read your name and display it. 
2) Print working directory.
3) Create a directory of your name  
   Change to your directory just made  
   Create a file inside your name and address
   Display the content of file
   Archive the folder.
   extract the archive
4) Match a sample regular expression against text in a file.
Enter your choice : "
read ch
case $ch
in
    1)  
        echo "Enter your name : "
        read name
        echo "Your name is : $name"
        ;;
    2)
        echo "Current working directory :" $PWD
        ;;
    3)
        mkdir dass
        echo "Directory 'dass' created"
        
        cd dass
        echo "Current working directory :" $PWD
        
        echo "File 'dass.txt' created"

        echo  " Nisha Das J Y
		Peniel Bhavan
		Trivandrum" >> dass.txt
         
        echo "Content of the file 'dass.txt'"
        cat dass.txt
        
        cd ..
        echo "Creating archive 'dass.tar'"    
        tar cvzf dass.tar.gz dass
        echo "Created successfully!"
	        echo "extracted:"
	tar -xzvf dass.tar.gz dass
        echo "extracted successfully"
        ;;
     4)
        echo "The string is :"
       
        grep Peniel sample.sh;;

esac
        

