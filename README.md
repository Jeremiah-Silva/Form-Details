# Form-Details
# <a href="" target="_blank"><img src="https://img.shields.io/badge/COBOL-0A2B3D.svg?style=for-the-badge&logo=none" target="_blank"></a>

The project consists of a program written in COBOL that aims to create a record of personal and professional information about a person using a layout defined in the "LAYOUT001.CPY" file.

The program begins by importing the layout with the statement "COPY 'LAYOUT001.CPY'". Then it declares some working variables in the WORKING-STORAGE section, including WS-TM-1 and WS-TM-2, which will be used later to calculate the correct position of certain fields in the layout.

In the PROCEDURE DIVISION, the program enters the MAIN-PROCEDURE, where the information record is created. The program uses the MOVE command to fill each field of the record with pre-defined information, including name, address, phone, nationality, and occupation.

The program then uses the REVERSE function to reverse the values of the WS-FIRST-NAME and WS-STREET fields, and the TALLYING function to count the number of blank spaces at the beginning of each of these fields. This count is stored in the WS-TM-1 and WS-TM-2 variables.

Next, the program uses the LENGTH function to determine the total length of the name and address, subtracts the value of the blank space count, and displays the result on the screen. The address fields are displayed together, with the WS-DISTRICT field omitted if it is empty.

Finally, the program displays the nationality and occupation before ending with the STOP RUN command.

The "LAYOUT001.CPY" file defines the structure of the record that the program is creating. It consists of fields for name, phone, address, postal code, nationality, and occupation, each with its own data format specification. The program uses these fields to fill in the record information.
#
![Form-Details](https://user-images.githubusercontent.com/108309798/233903451-3177786d-62ce-460e-a541-4f7a04065044.jpg)
