page 80004 PartyList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PartyMaster;
    Editable = false;
    Caption = 'PartyList';
    CardPageId = PartyCard;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption ='No.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Address;Rec.Addresss)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(City;Rec.City )
                {
                    ApplicationArea = All;
                    Caption = 'City';
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    Caption = 'State';
                }
                field(Country;Rec.Country)
                {
                    ApplicationArea = All;
                    Caption = 'Country';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Phone No.';
                }
                field("Total Party Amount";Rec."Total Party Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Total Party Amount';
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