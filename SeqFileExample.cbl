	IDENTIFICATION DIVISION.
	PROGRAM-ID. SeqFileExample.
	AUTHOR. jiuweigui.

	ENVIRONMENT DIVISION.
	INPUT-OUTPUT SECTION.
	FILE-CONTROL.
		SELECT UserDatabase ASSIGN TO "USERS.DATA"
			ORGANIZATION IS LINE SEQUENTIAL.

	DATA DIVISION.
	FILE SECTION.
	FD UserDatabase.
	01 UserRecord.
		88 EndOfUserDb 	VALUE HIGH-VALUES.
		02 UserId		PIC 9(5).
		02 UserNames.
			03 UserName	PIC X(5).
			03 RealName	PIC X(10).
		02 Password.
			03 Salt	PIC XX.
			03 Hash	PIC X(5).
		03 CountryCode	PIC XX.

	PROCEDURE DIVISION.
	
	OPEN OUTPUT UserDatabase
	DISPLAY "Enter user details using the template."
	DISPLAY "Enter no data to end."

	PERFORM GetUserRecord
	PERFORM UNTIL UserRecord = SPACES
		WRITE UserRecord
		PERFORM GetUserRecord
	END-PERFORM
	CLOSE UserDatabase

	OPEN INPUT UserDatabase.
	READ UserDatabase AT END SET EndOfUserDb TO TRUE
	END-READ
	PERFORM UNTIL EndOfUserDb
		DISPLAY UserId SPACE UserName SPACE Password
		READ UserDatabase AT END SET EndOfUserDb TO TRUE
		END-READ
	END-PERFORM
	CLOSE UserDatabase
	STOP RUN.

	GetUserRecord.
		DISPLAY "IIIIIUUUUURRRRRRRRRRSSPPPPPCC"
		ACCEPT UserRecord.
