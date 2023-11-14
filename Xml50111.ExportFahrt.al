
xmlport 50111 ExportFahrt
{

    Format = Xml;
    Direction = Export;
    schema
    {
        textelement(Fahrten)
        {
            tableelement(Fahrt; Fahrt)
            {
                fieldelement(Fahrer; Fahrt.Fahrer)
                {

                }
                fieldelement(Fahrzeug; Fahrt.Fahrzeug)
                {

                }

                fieldelement(Fahrtbeginn; Fahrt.Fahrtbeginn)
                {

                }

                fieldelement(Fahrtende; Fahrt.Fahrtende)
                {

                }

                fieldelement("Führerschein"; Fahrt."Führerschein")
                {

                }

                fieldelement("GefahreneKM"; Fahrt."Gefahrene KM")
                {

                }

                fieldelement("KMFahrtbeginn"; Fahrt."KM Fahrtbeginn")
                {

                }

                fieldelement("KMFahrtende"; Fahrt."KM Fahrtende")
                {

                }
            }
        }
    }



}
