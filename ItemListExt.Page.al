pageextension 50121 itemList extends "Item List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addfirst(reporting)
        {
            action(UpdateDescription2)
            {
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                var
                    Items: Record Item;
                begin
                    SetSelectionFilter(Items);
                    // if Items.FindSet() then
                    Report.RunModal(Report::"SOL UpdateItemDescriptions", false, false, Items);
                end;
            }
        }
    }

    var
        myInt: Integer;
}