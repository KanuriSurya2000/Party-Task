table 80001 PartyHeader
{
    DataClassification = CustomerContent;
    Caption = 'Party Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

        }
        field(2; "Party No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Party no.';
            TableRelation = PartyMaster;
            trigger OnValidate()
            begin
                if "Party Master".Get("Party No.") then begin
                    "Party Name" := "Party Master".Name;
                    "Party Address" := "Party Master".Addresss;
                    "Party city" := "Party Master".city;
                    "Party State" := "Party Master".State;
                    "Party Country" := "Party Master".Country;
                    "Party Phone No." := "Party Master"."Phone No.";
                end;
            end;
        }
        field(3; "Party Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Name';
        }
        field(4; "Party Address"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Adddress';
        }
        field(5; "Party city"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Party City';
        }
        field(6; "Party State"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Party State';
        }
        field(7; "Party Country"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Country';
        }
        field(8; "Party Phone No."; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Party Phone No.';
        }
        field(9; "Location Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(10; Status; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
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
        "Party Master": Record PartyMaster;
        "party Line": Record PartyLine;
        PartyLine1: Record PartyLine;
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