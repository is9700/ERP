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
        field(4; "Fahrtbeginn"; DateTime)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Fahrtende"; DateTime)
        {
            DataClassification = ToBeClassified;


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
            TableRelation = IF (Führerschein = CONST(PKW)) Fahrzeug.kennenzeichen WHERE(Typ = FILTER(Kombi | Transporter)) ELSE
            Fahrzeug.kennenzeichen;

        }
        field(9; "KM Fahrtbeginn"; Decimal)
        {
            DataClassification = ToBeClassified;


        }
        field(10; "KM Fahrtende"; Decimal)
        {
            DataClassification = ToBeClassified;


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

