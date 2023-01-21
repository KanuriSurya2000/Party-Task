page 80007 " Party Header List"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PartyHeader;
    Caption = 'Party Header List';
    Editable =false;
    CardPageId = "Party Header Document";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.'; 
                }
                field("Party No."; Rec."Party No.")
                {
                    ApplicationArea = All;
                    Caption = 'Party No.';
                }
                field("Party Name"; Rec."Party Name")
                {
                    ApplicationArea = All;
                    Caption = 'Party Name';
                }
                field("Party Address"; Rec."Party Address")
                {
                    ApplicationArea = All;
                    Caption = 'Party Address';
                }
                field("Party City"; Rec."Party city")
                {
                    ApplicationArea = All;
                    Caption = 'Party City';
                }
                field("Party State"; Rec."Party State")
                {
                    ApplicationArea = All;
                    Caption = 'Party State';
                }
                field("Party Country";Rec."Party Country")
                {
                    ApplicationArea = All;
                    Caption = 'Party Country';
                }
                field("Party Phone No."; Rec."Party Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Party phone No.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    Caption = 'Location code';
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