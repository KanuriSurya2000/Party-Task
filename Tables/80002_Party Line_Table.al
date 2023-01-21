table 80002 PartyLine
{
    DataClassification = CustomerContent;
    Caption = 'PartyLine';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';

        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';
        }
        field(3; "Party No."; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Party No.';
            TableRelation = PartyMaster;
        }
        field(4; "Type"; Option)
        {
            DataClassification = CustomerContent;
            OptionCaption = ' ,Item,G/LAccount,';
            OptionMembers = ,Item,"G/LAccount";
        }
        field(5; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            TableRelation = if (Type = const("")) "Standard Text"
            else
            if (Type = const("G/LAccount")) "G/L Account"
            else
            if (Type = const(Item)) Item;
            trigger OnValidate()
            begin
                case Type of
                    Type::"G/LAccount":
                        begin
                            "G/L Account".Get("No.");
                            Description := "G/L Account".Name;
                        end;
                    Type::Item:
                        begin
                            ItemTemp.Get("No.");
                            Description := ItemTemp.Description;
                            "Unit of measure Code" := ItemTemp."Base Unit of Measure";
                            "Unit Price" := ItemTemp."Unit Cost";
                        end;


                end;
            end;
        }
        field(6; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(7; "Unit of measure Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Unit of measure Code';
        }
        field(8; "Quantity"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                "Line Discount Amount" := ("Unit Price" * Quantity) * ("Line Discount %" / 100);
                Amount := ("Unit Price" * Quantity) - ("Line Discount Amount");
            end;

        }
        field(9; "Unit Price"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Unit Price';
            trigger OnValidate()
            begin
                "Line Discount Amount" := ("Unit Price" * Quantity) * ("Line Discount %" / 100);
                Amount := ("Unit Price" * Quantity) - ("Line Discount Amount");
            end;
        }
        field(10; "Line Discount %"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Line Discount %';
            trigger OnValidate()
            begin
                "Line Discount Amount" := ("Unit Price" * Quantity) * ("Line Discount %" / 100);
                Amount := ("Unit Price" * Quantity) - ("Line Discount Amount");
            end;
        }
        field(11; "Line Discount Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = ' Line Discount Amount';

        }
        field(12; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }
        field(13; Status; Code[30])
        {
            //DataClassification = ToBeClassified;
            Caption = 'Status';
            FieldClass = FlowField;
            CalcFormula = Lookup(PartyHeader.Status WHERE ("No."=FIELD("Document No.")));
           
        }
    }

    keys
    {
        key(PK; "Document No.", "Party No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        "G/L Account": Record "G/L Account";
        ItemTemp: Record Item;
        StdTxt: Record "Standard Text";

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