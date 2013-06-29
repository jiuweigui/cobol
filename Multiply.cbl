	IDENTIFICATION DIVISION.
	PROGRAM-ID. Multip.
	AUTHOR. jiuweigui.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 Number1 PIC 99.
	01 Number2 PIC 99.
	01 Number3 PIC 99.
	01 Number4 PIC 99.
	01 Result1  PIC 99999.
	01 Result1F PIC Z(10).Z(2).
	01 Result2 PIC 99999.
	01 Result2F PIC Z(10).Z(2).
	01 Total PIC 999999999.
	01 Formatted PIC Z(10).Z(2).
	
	PROCEDURE DIVISION.
	
	Calc1.
		DISPLAY "Enter the first number: ".
		ACCEPT Number1.
		DISPLAY "Enter the second number: ".
		ACCEPT Number2.
		MULTIPLY Number1 BY Number2 GIVING Result1.
		DISPLAY "Displaying first result!".
		MOVE Result1 to Result1F.
		DISPLAY Result1F.
		
	Calc2.
		DISPLAY "Enter the third number: ".
		ACCEPT Number3.
		DISPLAY "Enter the fourth number: ".
		ACCEPT Number4.
		MULTIPLY Number3 BY Number4 GIVING Result2.
		DISPLAY "Displaying second result!".
		MOVE Result2 TO Result2F.
		DISPLAY Result2F.
		ADD Result1,Result2 TO Total.
		MOVE Total TO Formatted.
		DISPLAY "Entered values:".
		DISPLAY "---------------".
		DISPLAY "First result: ", Result1F.
		DISPLAY "Second result: ", Result2F.
		DISPLAY "Results added together: ", Formatted.

	STOP RUN.
