#! /bin/bash
# valInput: Validating the input of user

validation()
{
        # Function validation: returns 1 if the input consist of characters  
        # that are not alphabetic and echo an error message
        # return 0 if the input only consist of alphabetic characters 
        val="$(echo $1 | sed -e 's/[^[:alpha:]]//g')"
        if [ "$val" != "$input" ] ; then
                echo "Error: Input must consist of letters"
                return 1
        else
                return 0
        fi
}

echo "Enter input: "
read input

if validation "$input"  ; then
        echo "Input is valid"
else
        exit 1
fi 
