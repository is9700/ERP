page 50110 "FahrtListFactbox" 
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists ;
    SourceTable = Fahrt;
    Editable=false;
    
    layout
    {
        area(Content)
        {
            repeater(groupname)
            {
                 field(Fahrtbeginn; rec.Fahrtbeginn)
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