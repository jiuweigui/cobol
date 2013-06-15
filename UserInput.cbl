       IDENTIFICATION DIVISION.
       PROGRAM-ID. UserInput.
	AUTHOR. jiuweigui
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 UserName.
		02 Name	PIC X(10).
	PROCEDURE DIVISION.
	DISPLAY "What is your name?".
	ACCEPT UserName.
	DISPLAY "It's nice to meet you" SPACE Name.
	STOP RUN. 
