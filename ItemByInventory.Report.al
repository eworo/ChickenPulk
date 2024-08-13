report 50100 "SOL Inventory By Item"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './layout/InventoryByItem.rdl';
    WordLayout = './layout/InventoryByItem.docx';
    dataset
    {
        dataitem(Item; Item)
        {
            column(No_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(Inventory_Item; Inventory)
            {
                IncludeCaption = true;
            }

        }
    }


}