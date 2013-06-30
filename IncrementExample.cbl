	IDENTIFICATION DIVISION.
	AUTHOR. jiuweigui.
	PROGRAM-ID. Increment.
      * Program takes a value and increments until greater
      * and prints those values.	
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 A PIC 99(9).
	01 I PIC 99(9).
	01 X PIC Z(9)9.
	
	PROCEDURE DIVISION.
	DISPLAY "This is an example using increment.".
	DISPLAY "-----------------------------------".
	DISPLAY "Please enter a value:".	
	ACCEPT A.
	MOVE 0 TO I.
	PERFORM UNTIL I GREATER THAN A
		COMPUTE X = I + 1
		DISPLAY X
		ADD 1 TO I
	END-PERFORM.
	STOP RUN.
