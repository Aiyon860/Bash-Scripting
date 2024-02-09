#!/usr/bin/zsh

echo "--> Selamat Datang di Program Kalkulator Sederhana <--"
echo "Dibuat oleh: Daniel Ganteng"

echo -e "\nTolong Masukkan Operand Pertama!"
read first_operand
echo "Tolong Masukkan Operand Kedua!"
read second_operand
echo "Tolong Masukkan Operasi yang Diinginkan (+,-,*,/):"
read -r operation

case $operation in 
    "+" | "plus")
        result=$(("$first_operand" + "$second_operand"))
        echo -e "\nHasil: $result"
        ;;
    "-" | "minus")
        result=$(("$first_operand" - "$second_operand"))
        echo -e "\nHasil: $result"
        ;;
    "*" | "x" | "multiply" | "times")
        result=$(("$first_operand" * "$second_operand"))
        echo -e "\nHasil: $result"
        ;;
    "/" | "divide")
        result=$(("$first_operand" / "$second_operand"))
        echo -e "\nHasil: $result"
        ;;
    *)
        echo "Perintah Tidak Dimengerti, Silahkan Coba Kembali."
        ;;
esac
