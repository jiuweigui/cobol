	IDENTIFICATION DIVISION.
	AUTHOR. jiuweigui.
	PROGRAM-ID. Nested-IFs.
      * Example using Nested IFs
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 A PIC 99.
	01 B PIC 99.
	01 RESULT PIC 9999. 
	01 FORMATTED PIC Z(9).

	PROCEDURE DIVISION.
	
	DISPLAY "Enter the first value: ".
	ACCEPT A.
	DISPLAY "You entered ", A " as a value.".
	DISPLAY "Please enter the second value: ".
	ACCEPT B.
	DISPLAY "You entered ", B " as a second value.".
	
	COMPUTE RESULT = A + B.
	IF (A < 10) AND (B > 10) THEN
		IF RESULT > 50 THEN
			DISPLAY "Result is bigger than 50."
		ELSE
			MOVE RESULT TO FORMATTED
			DISPLAY FORMATTED
		END-IF

	STOP RUN.
