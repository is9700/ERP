table 50101 Fahrzeug
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "kennenzeichen"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Typ"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Kombi","Transporter","LKW";

        }
        field(3; "Hersteller"; text[30])
        {
            DataClassification = ToBeClassified;


        }

        field(4; "Modell"; text[30])
        {
            DataClassification = ToBeClassified;


        }
        field(5; "Kaufpreis"; Decimal)
        {
            DataClassification = ToBeClassified;


        }
        field(6; "Kraftstoff"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Benzin","Diesel","Hybrid";

        }
        field(7; "Kilometerstand"; Decimal)
        {
            FieldClass = FlowField;
            DecimalPlaces = 1 : 1;
            CalcFormula = Sum(Fahrt."Gefahrene KM" WHERE(Fahrzeug = field(kennenzeichen)));

        }
        field(8; "Anhangerkuppler"; Boolean)
        {
            DataClassification = ToBeClassified;


        }
        field(9; "Kaufdatum"; Date)
        {
            DataClassification = ToBeClassified;


        }
        field(10; "Restbuchwert"; Decimal)
        {
            FieldClass = FlowField;

            CalcFormula = min(Abschreibung.Restbuchwert WHERE(Fahrzeug = FIELD(kennenzeichen)));



        }
    }
    keys
    {
        key(PK; kennenzeichen)
        {
            Clustered = true;
        }
    }
}


