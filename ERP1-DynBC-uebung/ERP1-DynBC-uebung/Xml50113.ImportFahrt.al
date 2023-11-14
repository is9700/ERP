

xmlport 50113 ImportFahrt
{
    Format = Xml;
    Direction = Import;
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

                fieldelement(ZweckDerFahrt; Fahrt."Zweck der Fahrt")
                {

                }



                fieldelement(KMFahrtbeginn; Fahrt."KM Fahrtbeginn")
                {

                }

                fieldelement(KMFahrtende; Fahrt."KM Fahrtende")
                {

                }
                fieldelement(GefahreneKM; Fahrt."Gefahrene KM")
                {

                }
            }
        }
    }
}

