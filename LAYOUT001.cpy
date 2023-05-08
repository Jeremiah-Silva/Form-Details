       01 FORM.
           03 WS-NAME.
               05 WS-FIRST-NAME                PIC X(20).
               05 WS-LAST-NAME                 PIC X(20).
           03 WS-PHONE.
               05 WS-COUNTRY                   PIC 9.
               05 WS-CODECOUNTRY               PIC 999.
               05 WS-CODEPROVINCE1             PIC 9(03).
               05 WS-CODEPROVINCE2             PIC 9(04).
           03 WS-ADDRESS.
               05 WS-STREET                    PIC X(20).
               05 WS-DISTRICT                  PIC X(15).
               05 WS-CITY                      PIC X(15).
               05 WS-PROVINCE                  PIC XX(08).
               05 WS-POSTCODE.
                    07 WS-POSTCODE-1           PIC X(03).
                    07 WS-POSTCODE-2           PIC X(03).
           03 WS-NACIONALITY                   PIC X(20).
           03 WS-OCCUPATION                    PIC X(20).