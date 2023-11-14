table 50103 Abschreibung
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Fahrzeug; Code[20])
        {
            DataClassification = ToBeClassified;
TableRelation=Fahrzeug.kennenzeichen;
        }
        field(2; Jahr; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Abschreibungssatz; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Abschreibungsbetrag; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(5; Restbuchwert; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }


    }

    keys
    {
        key(PK; Fahrzeug, Jahr)
        {
            Clustered = true;
        }
    }
}