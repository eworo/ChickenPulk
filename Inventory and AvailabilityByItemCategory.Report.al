report 50101 "SOL Invent Avail. By Item Cat."
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Inventory and Availability, by Item Category';
    dataset
    {
        dataitem(Item; Item)
        {
            CalcFields = Inventory, "Qty. on Purch. Order", "Qty. on Sales Order";
            PrintOnlyIfDetail = true;
            column(No_Item; "No.")
            {
                IncludeCaption = true;

            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;

            }
            column(ItemCategoryCode_Item; "Item Category Code")
            {
                IncludeCaption = true;
            }
            column(Inventory_Item; Inventory)
            {
                IncludeCaption = true;

            }
            column(Availability; Inventory - "Qty. on Sales Order" + "Qty. on Purch. Order")
            {
            }
            dataitem("Item Category"; "Item Category")
            {
                DataItemLink = Code = field("Item Category Code");
                column(Description; Description)
                {
                    IncludeCaption = true;
                }
            }

        }

    }
    labels
    {
        Inventory = 'Inventory';
    }
    var
        Availability: Decimal;

}