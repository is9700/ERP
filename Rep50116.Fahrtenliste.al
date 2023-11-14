report 50116 Fahrtenliste
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRDLReport2.rdl';

    dataset
    {
        dataitem(Fahrzeug; Fahrzeug)
        {
            column(Kennzeichen; kennenzeichen)
            {

            }
            column(Typ; "Typ")
            {

            }
            column(Hersteller; "Hersteller")
            {

            }
            column(Modell; "Modell")
            {

            }

            column(Kaufpreis; "Kaufpreis")
            {

            }
            column(Kraftstoff; Kraftstoff)
            {

            }
            column(Kilometerstand; "Kilometerstand")
            {

            }
            column(Anhängerkupplung; "Anhangerkuppler")
            {

            }
            column(Kaufdatum; "Kaufdatum")
            {

            }
            column(Restbuchwert; "Restbuchwert")
            {

            }
            dataitem(Fahrt; Fahrt)
            {
                column(Fahrer; "Fahrer")
                {

                }
                column(Nummer; "Nummer")
                {

                }
                column(KFZ; Fahrzeug)
                {

                }

                column(Fahrtbeginn; "Fahrtbeginn")
                {

                }
                column(Fahrtende; "Fahrtende")
                {

                }
                column(Zweck_der_Fahrt; "Zweck der Fahrt")
                {

                }
                column(KM_Fahrtbeginn; "KM Fahrtbeginn")
                {

                }
                column(KM_Fahrtende; "KM Fahrtende")
                {

                }
                column(Gefahrene_KM; "Gefahrene KM")
                {

                }
                column(Führerschein; "Führerschein")
                {

                }
                dataitem(Employee; Employee)

                {
                    column(First_Name; "First Name")
                    {

                    }
                    column(Last_Name; "Last Name")
                    {

                    }


                }


            }

        }


    }
}