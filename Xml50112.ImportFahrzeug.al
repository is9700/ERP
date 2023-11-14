
xmlport 50112 ImportFahrzeug
{
    Format = Xml;
    Direction = Import;
    schema
    {
        textelement(Fahrzeuge)
        {
            tableelement(Fahrzeug; Fahrzeug)
            {
                fieldelement(Kennzeichen; Fahrzeug.Kennenzeichen)
                {

                }
                fieldelement(Typ; Fahrzeug.Typ)
                {

                }
                fieldelement(Hersteller; Fahrzeug.Hersteller)
                {

                }
                fieldelement(Modell; Fahrzeug.Modell)
                {

                }
                fieldelement(Kaufpreis; Fahrzeug.Kaufpreis)
                {

                }
                fieldelement(Kraftstoff; Fahrzeug.Kraftstoff)
                {

                }

                fieldelement(Anhängerkupplung; Fahrzeug.Anhangerkuppler)
                {

                }

                fieldelement(Kaufdatum; Fahrzeug.Kaufdatum)
                {

                }







            }
        }
    }
}



