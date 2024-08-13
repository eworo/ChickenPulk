report 50102 "SOL UpdateItemDescriptions"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    Caption = 'Update Item Description 2';
    dataset
    {
        dataitem(Item; Item)
        {

            RequestFilterFields = "No.";
            trigger OnPreDataItem()
            begin
                TotalRecord := 0;
            end;

            trigger OnAfterGetRecord()
            var
                Descript2: Text;
            begin
                Descript2 := CopyStr(Item.Description + ' (' + Item."No." + ') ', 1, MaxStrLen(Item."Description 2"));
                Item.Validate("Description 2", Descript2);
                if Item.Modify() then
                    TotalRecord += 1;
            end;

            trigger OnPostDataItem()
            begin
                Message(TotalRecordsMsg, TotalRecord);
            end;
        }
    }


    var
        TotalRecord: Integer;
        TotalRecordsMsg: Label '%1 Record(s) have been Processed ';
}