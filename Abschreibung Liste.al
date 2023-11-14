page 50109 AbschreibungListe
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Abschreibung;
    Editable = false;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {


                field(Fahrzeug; rec.Fahrzeug)
                {
                    ApplicationArea = All;
                }

            }
            field(Jahr; rec.jahr)
            {
                ApplicationArea = All;
            }
            field(Abschreibungssatz; Rec.Abschreibungsbetrag)
            {
                ApplicationArea = All;
            }
            field(Abschreibungsbetrag; Rec.Abschreibungsbetrag)
            {
                ApplicationArea = ALL;
            }

            field(Restbuchwert; Rec.Restbuchwert)
            {
                ApplicationArea = ALL;
                DrillDownPageId = "AbschreibungListe";
                Editable = false;
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}