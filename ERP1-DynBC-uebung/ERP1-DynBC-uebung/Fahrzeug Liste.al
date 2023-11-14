page 50107 FahrzeugListe
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrzeug;
    Editable = false;

    layout
    {
        area(Content)
        {
            group(repeater)
            {
                field(Typ; Rec.Typ)
                {
                    ApplicationArea = All;
                }
                field(kennenzeichen; Rec.kennenzeichen)
                {
                    ApplicationArea = All;
                }
                field(Hersteller; Rec.Hersteller)
                {
                    ApplicationArea = All;
                }
                field(Modell; Rec.Modell)
                {
                    ApplicationArea = All;
                }
                field(Kilometerstand; Rec.Kilometerstand)
                {
                    ApplicationArea = All;
                }
            }

        }
        area(Factboxes)
        {
            part(FahrtListFactbox; "FahrtListFactbox")
            {
                SubPageView = sorting(Fahrtbeginn) order(descending);
                SubPageLink = Fahrzeug = field(kennenzeichen);
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Karte)
            {
                ApplicationArea = All;
                RunObject = page Fahrzeug;
                RunPageLink = kennenzeichen = field(kennenzeichen);
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = AnalysisView;
                trigger OnAction()
                begin
                    // Add action logic here
                end;
            }
        }


    }
}
