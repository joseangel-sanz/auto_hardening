#!/bin/bash
# Bash Menu

PS3= "[Select an option from the list:]"
options=("1: Admin user" "2: Normal user" "3: Quit")
select opt in "${options[@]}"
do
    case $opt in
        "1: Admin user")
            echo "**** Creating admin user ****"
            echo
            echo -e "Please Enter the User name:"
            read usr_name
            useradd $usr_name
            usermod --append -G wheel $usr_name
			echo -e "Please Enter the Password:"
            read password
            echo $password | passwd --stdin $usr_name
            sudo chage --mindays 1 --maxdays 90 --warndays 7 $usr_name
            echo -e "Done\n"
            break;;

        "2: Normal user")
            echo "**** Creating normal user ****"
            echo
            echo -e "Please Enter the User name:"
            read usr_name
            useradd $usr_name
            echo -e "Please Enter the Password:"
            read password
            echo $password | passwd --stdin $usr_name
            sudo chage --mindays 1 --maxdays 90 --warndays 7 $usr_name
            echo -e "Done\n"
            break;;

        "3: Quit") break;;
        *) echo "Invalid option";;
    esac
done