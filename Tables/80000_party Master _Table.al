table 80000 PartyMaster
{
    DataClassification = CustomerContent;
    Caption = 'Partymaster';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

        }
        field(2; "Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(3; "Addresss"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(4; city; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'City';
        }
        field(5; State; code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'State';

        }
        field(6; Country; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'country';
            TableRelation = "Country/Region";
        }
        field(7; "Phone No."; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'phone No.';
        }
        field(8; "Total Party Amount"; Decimal)
        {
            //DataClassification = ToBeClassified;
            Caption = 'Total Party Amount 1';
            FieldClass = FlowField;
            CalcFormula = sum(PartyLine.Amount where("Party No." = field("No.")));
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}