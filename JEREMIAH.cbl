      *****************************************************************
      * Program name:    FORM Details                              
      * Original author: Jeremiah Silva                                
      * 
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 23/04/23 JEREMIAH SILVA Created COBOL code for me         
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FORM.
       DATA DIVISION.
       FILE SECTION. 
       WORKING-STORAGE SECTION.
       COPY 'LAYOUT001.CPY'.
       77 WS-TM-1                   PIC 999.
       77 WS-TM-2                   PIC 999.
 
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 'JEREMIAH'                       TO WS-FIRST-NAME     
            MOVE 'SILVA'                          TO WS-LAST-NAME
            MOVE '15874343195'                    TO WS-PHONE
            MOVE 'VILLAGE HEIGHTS, 113'           TO WS-STREET
            MOVE 'COACH HILLS'                    TO WS-DISTRICT
            MOVE 'CALGARY'                        TO WS-CITY
            MOVE 'ALBERTA'                        TO WS-PROVINCE
            MOVE 'T3H2L2'                         TO WS-POSTCODE
            MOVE 'CANADIAN'                       TO WS-NACIONALITY
            MOVE 'FULL STACK DEVELOPER '          TO WS-OCCUPATION
              
            MOVE ZEROS                            TO WS-TM-1
              INSPECT FUNCTION REVERSE(WS-FIRST-NAME)       
                      TALLYING WS-TM-1 FOR LEADING ' '                    

            DISPLAY '1 - FULL NAME..: '               WS-FIRST-NAME
                  (1:(FUNCTION LENGTH(WS-FIRST-NAME) - WS-TM-1))
                                                     ' '         
                                                      WS-LAST-NAME
            DISPLAY '2 - PHONE......: '            '+'WS-COUNTRY 
                                                     ' '
                                                   '('WS-CODECOUNTRY')' 
                                                     ' '
                                                      WS-CODEPROVINCE1
                                                     '-'
                                                      WS-CODEPROVINCE2

            MOVE ZEROS                             TO WS-TM-1
              INSPECT FUNCTION REVERSE(WS-STREET)       
                      TALLYING WS-TM-1 FOR LEADING ' ' 

            MOVE ZEROS                             TO WS-TM-2
              INSPECT FUNCTION REVERSE(WS-CITY)       
                      TALLYING WS-TM-2 FOR LEADING ' ' 
                                                       
            DISPLAY '3 - ADDRESS....: '               WS-STREET             
              (1:(FUNCTION LENGTH(WS-STREET) - WS-TM-1))
                                                     ' '
                                                      WS-DISTRICT
                                                      WS-CITY
              (1:(FUNCTION LENGTH(WS-CITY) - WS-TM-2))
                                                     ' '
                                                      WS-PROVINCE     

                   FUNCTION CONCATENATE(' - POSTCODE: ' 
                                      WS-POSTCODE-1
                                      ' '
                                      WS-POSTCODE-2
                                       )      
            DISPLAY '4 - NACIONALITY: '               WS-NACIONALITY
            DISPLAY '5 - OCUPATION..: '               WS-OCCUPATION
                        
            STOP RUN.
       END PROGRAM FORM.