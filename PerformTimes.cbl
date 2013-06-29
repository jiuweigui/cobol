	IDENTIFICATION DIVISION.
	AUTHOR. jiuweigui.
	PROGRAM-ID. PerformThroughExample.
	
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 RepeatTimes PIC 9 VALUE 7.

	PROCEDURE DIVISION.
	DISPLAY "Program starts here...".
	PERFORM 5 TIMES
		DISPLAY "[+] This is inline version printed 5 times."
		END-PERFORM
	DISPLAY "Done with inline next stop out-of-line..."
	PERFORM SecondVersion RepeatTimes TIMES.
	DISPLAY "Program execution ends here...".
	STOP RUN.

	SecondVersion.
	DISPLAY "[-] This is Out-of-line Perform printed 7 times.".
