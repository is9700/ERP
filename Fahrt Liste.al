page 50108 FahrtListe
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrt;
    Editable = false;
    SourceTableView = sorting(Fahrtbeginn) order(ascending);

    layout
    {
        area(Content)
        {
            group(repeater)
            {
                field(Fahrer; rec.Fahrer)
                {
                    ApplicationArea = All;

                }
                field(Nummer; rec.Nummer)
                {
                    ApplicationArea = All;

                }
                field(Fahrzeug; rec.Fahrzeug)
                {
                    ApplicationArea = All;

                }
                field(Fahrtbeginn; rec.Fahrtbeginn)
                {
                    ApplicationArea = All;

                }
                field(Fahrtende; rec.Fahrtende)
                {
                    ApplicationArea = All;

                }
                field("Zweck der Fahrt"; rec."Zweck der Fahrt")
                {
                    ApplicationArea = All;

                }
                field("Gefahrene KM"; rec."Gefahrene KM")
                {
                    ApplicationArea = All;

                }

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
                RunObject = page Fahrt;
                RunPageLink = Nummer = field(Nummer);
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = AnalysisView;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}