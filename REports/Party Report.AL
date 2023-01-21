report 80020 PartReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './PartReport.rdl';

    dataset
    {

        dataitem(PartyHeader; PartyHeader)
        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            { }
            column(Party_No_; "Party No.")
            { }
            column(Party_Name; "Party Name")
            { }
            column(Party_Address; "Party Address")
            { }
            column(Party_Phone_No_; "Party Phone No.")
            { }
            column(Party_city; "Party city")
            { }
            column(Party_State; "Party State")
            { }
            column(NumCap; NumCap)
            { }
            column(NameCap; NameCap)
            { }
            column(rajuCap; rajuCap)
            { }

            dataitem(PartyLine; PartyLine)
            {
                DataItemLinkReference = PartyHeader;
                DataItemLink = "Document No." = field("No.");
                column(Document_No_; "Document No.")
                { }
                column(Party_No; "Party No.")
                { }
                column(Unit_of_measure_Code; "Unit of measure Code")
                { }
                column(Description; Description)
                { }
                column(Quantity; Quantity)
                { }
                column(Unit_Price; "Unit Price")
                { }
                column(Line_Discount__; "Line Discount %")
                { }
                column(Line_Discount_Amount; "Line Discount Amount")
                { }
                column(Amount; Amount)
                { }

            }
        }

    }
    var
        NumCap: Label 'No.';
        NameCap: Label 'Name';

        rajuCap: Label 'Raju';

}