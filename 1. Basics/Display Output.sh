#!/bin/bash

# Suppress the trailing newline character
echo -n "I am not on new line"
echo " Whatever"


# Enable Interpretation
echo -e "Hello\n Wor\tld\n"

# Font Effects
echo -e "This is \033[0mnormal\033[0m text."
echo -e "This is \033[1mbold\033[0m text."
echo -e "This is \033[2mFaint\033[0m text."
echo -e "This is \033[3mItalic\033[0m text."
echo -e "This is \033[4mUnderline\033[0m text."
echo -e "This is \033[5mSlow Blink\033[0m text."
echo -e "This is \033[6mRapid Blink\033[0m text."
echo -e "This is \033[7mblack\033[0m text."
echo -e "This is \033[47;8mConceal\033[0m text."
echo -e "This is \033[9mCrossed-out\033[0m text."
echo -e "This is \033[10mdefault\033[0m text."


# Foreground color: 30–37
echo -e "\nThis is \033[30;47mblack\033[0m text."
echo -e "This is \033[31mred\033[0m text."
echo -e "This is \033[32mgreen\033[0m text."
echo -e "This is \033[33myellow\033[0m text."
echo -e "This is \033[34mblue\033[0m text."
echo -e "This is \033[35mviolet\033[0m text."
echo -e "This is \033[36maqua\033[0m text."
echo -e "This is \033[37mwhite\033[0m text."


# Background color: 40–47
echo -e "\nThis is \033[40mblack\033[0m background."
echo -e "This is \033[41mred\033[0m background."
echo -e "This is \033[42mgreen\033[0m background."
echo -e "This is \033[43myellow\033[0m background."
echo -e "This is \033[44mblue\033[0m background."
echo -e "This is \033[45mviolet\033[0m background."
echo -e "This is \033[46maqua\033[0m background."
echo -e "This is \033[30;47mwhite\033[0m background."


# Printf Command
printf "\nString Notation: %s\n" "Hello James, How are you?"
printf "Integer Notation: %d\n" 136
printf "Floating Point Notation: %.2f\n" "3.14159"
printf "Character Notation: %c\n" "M"
printf "Hexadecimal Notation: %x\n" "255"
printf "Exponential Notation: %e\n" ""


# Width: Specifies the minimum width of the output.
printf "\nWidth: %10s\n" "Hi"
printf "Width: %10d\n" 243


# Precision: Specifies the number of decimal places (for floating-point numbers) or maximum characters (for strings).
printf "\nPrecision: %.3f\n" 1.2345
printf "Precision: %.11s\n" "Water is life. Life is water!"

printf "\nPrecision & Width Combined: %20.3f\n" 1.2345
