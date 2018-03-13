echo "
1) Display the contents of the file in terminal 
2) Display first parts of the files.
3) Display last parts of the files.
4) Redirect the contents of files f1 and f2 to f3.
5) Create file f4 and move contents of f3 to f4.
6) Check if a string is present in any of the files. 
7) Display a file as pages(more) 
8) Display a file as pages(less) 
9) Copy contents of one file to another
10) Count Number of Lines, Words, Characters in a file
11) Search for a file

Enter your choice:
"

 
read choice
case $choice 
in
1)	echo "The contents of the file is:"
	cat f1.txt;;
2)	echo "The first part of this file is:"
	head f1.txt;;
3)	echo "The last part of this file is:"
	tail f1.txt;;
4)	echo "redirect contents of a files are:"
	cat f1.txt f2.txt > f3.txt;;
5)	echo "contents of f4 is:"
	mv f3.txt f4.txt;;
6)	echo "Enter the string to be searched"
	read str
	echo "In which file you want to search:"
	read file
	grep $str $file	
;;
7)	more f1.txt;;
8)	less f1.txt;;
9)	cp f1.txt f4.txt;;
10)	echo "Number of Lines, Words, Characters in a file is:"
	wc f1.txt;;
11) 	echo "Enter the file to be searched"
	read str
	echo "The file is:"
	find $str;;
esac
    
