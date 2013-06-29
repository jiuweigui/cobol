	IDENTIFICATION DIVISION.
	PROGRAM-ID. PerformExample.
	AUTHOR. jiuweigui.
      * Example of jumping around using Perform
	
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 UserInitials PIC x(10).
	01 A PIC 999 VALUE 30.
	01 B PIC 999 VALUE 20.
	01 Result PIC 999999.
	01 Formatted PIC Z(10).Z(2).
	
	PROCEDURE DIVISION.
	
	FirstStage.
	DISPLAY "------------------".
	DISPLAY "This is the first stage of the program.".
	DISPLAY "...and next we're at???".
	DISPLAY "------------------".
	PERFORM ThirdStage.
	DISPLAY "------------------".
	DISPLAY "Previous one was Third Stage and now we're at 1st.".
	DISPLAY "Alas we've ran out lines..".
	DISPLAY "------------------".
	STOP RUN.

	SecondStage.
	DISPLAY "You have reached Second Stage.".
	DISPLAY "Please enter your initials:".
	ACCEPT UserInitials
	DISPLAY "Hello ", UserInitials.
	DISPLAY "I wonder what's the next destination...".

	ThirdStage.
	DISPLAY "You've reached the third stage (instead of second).".
	DISPLAY "Here we like maths.".
	MULTIPLY A BY B GIVING Result.
	MOVE Result TO Formatted.
	DISPLAY "We multiplied 30 with 20 and got ", Formatted.
	DISPLAY "Next we'll jump to the Second Stage..".
	DISPLAY "--------------------------".
	PERFORM SecondStage.
	
