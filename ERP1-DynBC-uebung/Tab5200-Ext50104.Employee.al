tableextension 50104 tab5200 extends Employee
{
    fields
    {

        field(50000; "Führerschein"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Keinen","PKW","LKW";
        }
    }
    var
        myInt: Integer;
zdzf
}

