page 50105 Fahrzeug
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrzeug;

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field(Kennenzeichen; Rec.Kennenzeichen)
                {
                    ApplicationArea = All;

                }
                field(Typ; Rec.Typ)
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
                field(Kraftstoff; Rec.Kraftstoff)
                {
                    ApplicationArea = All;

                }
                field(Kilometerstand; Rec.Kilometerstand)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Anhangerkuppler; Rec.Anhangerkuppler)
                {
                    ApplicationArea = All;

                }


            }
            group(Abschreibung)
            {
                field(Kaufpreis; Rec.Kaufpreis)
                {
                    ApplicationArea = All;

                }
                field(Kaufdatum; Rec.Kaufdatum)
                {
                    ApplicationArea = All;

                }
                field(Restbuchwert; Rec.Restbuchwert)
                {
                    ApplicationArea = All;
                    DrillDownPageId = "AbschreibungListe";
                    Editable = false;

                }
                field("Afa-Methode"; "Afa-Methode")
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
            action(Import)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Xmlport.Run(50112, false, true);
                end;
            }
            action("Restbuchwert berechnen ")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CashReceiptJournal;
                trigger OnAction()
                begin
                    case "Afa-Methode" of
                        "Afa-Methode"::linear:
                            AFA.Linear(Rec.kennenzeichen);
                        "Afa-Methode"::degressiv:
                            AFA.Degressiv(Rec.kennenzeichen);
                        "Afa-Methode"::kombiniert:
                            AFA.kombiniert(Rec.kennenzeichen);
                        "Afa-Methode"::leistungsabh:
                            AFA."Leistungsabhangig"(Rec.kennenzeichen);
                    end;
                end;



            }
        }
    }

    var
        "Afa-Methode": Option linear,degressiv,kombiniert,leistungsabh;
        AFA: Codeunit Afa;

}