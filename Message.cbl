      * Prints predefined message	
	IDENTIFICATION DIVISION.
	PROGRAM-ID. PreDefMsg.
	AUTHOR. jiuweigui.

	DATA DIVISION.	
	WORKING-STORAGE SECTION.
	01 PreDefMsg	PIC X(18) VALUE 'Hello again World!'.
	
	PROCEDURE DIVISION.
	DISPLAY PreDefMsg.
	STOP RUN.
