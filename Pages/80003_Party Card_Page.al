page 80003 PartyCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PartyMaster;
    Caption = 'PartyCard';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Address; Rec.Addresss)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Caption = 'City';
                }
                field(State;Rec.State)
                {
                    ApplicationArea = All;
                     Caption = 'State';
                }
                field(Country;Rec.Country )
                {
                    ApplicationArea = All;
                    Caption = 'Country';
                }
                field("Phone No.";Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption ='Phone No.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Part Header List")
            {
                ApplicationArea = All;
                Caption = 'Party Header List';
                RunPageMode = View;
                Image = ItemAvailability;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = page " Party Header List";

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}