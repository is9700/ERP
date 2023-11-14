pageextension 50111 ExtEmployee extends "Employee Card"
{
    layout
    {
        addafter("Company E-Mail")

        {
            field("Führerschein"; Rec."Führerschein")
            {
                ApplicationArea = all;
            }
        }


    }
}