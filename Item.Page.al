pageextension 50100 ItemCard extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addfirst(processing)
        {
            action(UpdateDescription2)
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    Item: Record Item;
                begin
                    Item.SetRange("No.", Rec."No.");
                    Report.RunModal(Report::"SOL UpdateItemDescriptions", false, false, Item);
                end;
            }
        }
    }

    var
        myInt: Integer;
}