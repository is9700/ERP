table 50102 Fahrt
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Fahrer"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee."No." where("Führerschein" = filter(PKW | LKW));

        }
        field(2; "Nummer"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(3; "Fahrzeug"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Fahrzeug.kennenzeichen;

        }
        field(4; "Fahrtbeginn"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;

        }
        field(5; "Fahrtende"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;

        }
        field(6; "Zweck der Fahrt"; Text[30])
        {
            DataClassification = ToBeClassified;


        }

        field(7; "Gefahrene KM"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;

        }
        field(8; "Führerschein"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Keinen","PKW","LKW";
            TableRelation = IF (Führerschein = CONST(PKW)) Fahrzeug.kennenzeichen WHERE(Typ = FILTER(kombl | Transporter)) ELSE
            Fahrzeug.kennenzeichen;
        }
    }

    keys
    {
        key(PK; Fahrer, Nummer)
        {
            Clustered = true;
            SumIndexFields = "Gefahrene KM";
        }
        key(SK; Fahrtbeginn)
        {

        }

    }
}

