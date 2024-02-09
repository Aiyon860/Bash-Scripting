#!/usr/bin/zsh

echo "--> Selamat Datang di Program Kalkulator Sederhana <--"
echo "Dibuat oleh: Daniel Ganteng"

echo -e "\nTolong Masukkan Operand Pertama!"
read first_operand
echo "Tolong Masukkan Operand Kedua!"
read second_operand
echo "Tolong Masukkan Operasi yang Diinginkan (+,-,*,/):"
read -r operation

# echo "Operation: [$operation]"

# Convert operation to lowercase
# operation=$(echo "$operation" | tr '[:upper:]' '[:lower:]')

# echo "Operation (lowercase): [$operation]"

if [ "$operation" = "+" ]; then
	result=$(("$first_operand" + "$second_operand"))
	echo -e "\nHasil: $result"
elif [ "$operation" = "-" ]; then
	result=$(("$first_operand" - "$second_operand"))
    echo -e "\nHasil: $result"
elif [ "$operation" = "*" ]; then    
	result=$(("$first_operand" * "$second_operand"))
    echo -e "\nHasil: $result"
elif [ "$operation" = "/" ]; then 
	result=$(("$first_operand" / "$second_operand"))
    echo -e "\nHasil: $result"
else
    echo -e "\nPerintah Tidak Dimengerti, Silahkan coba kembali!"
fi
