page 80006 "Party Header Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PartyHeader;
    Caption = 'party header Document';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
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
                field("Party Country"; Rec."Party Country")
                {
                    ApplicationArea = All;
                    Caption = 'Party Country';
                }
                field("Party Phone No."; Rec."Party Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Party Phone No.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    Caption = 'Location code';
                }
                field(status; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }

            }
            part("Party Line"; "Party ListPart")
            {
                SubPageLink = "Party No." = field("Party No."),
                             "Document No." = field("No.");
                UpdatePropagation = Both;

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Party Card")
            {
                ApplicationArea = All;
                Caption = 'Party Card';
                RunPageMode = View;
                Promoted = true;
                Image = ItemAvailability;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = page PartyCard;



                trigger OnAction()
                begin

                end;
            }
        }
    }

    var

        myInt: Integer;
}