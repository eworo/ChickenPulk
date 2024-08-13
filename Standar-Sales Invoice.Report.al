reportextension 50100 "Stgandar Sales Invoice" extends "Standard Sales - Invoice"
{
    RDLCLayout = './layout/StandardSalesInvoiceNew.rdlc';
    dataset
    {
        add(Header)
        {
            column(Order_No_;"Order No.")
            { }
            column(Order_No_Lbl; Header.FieldCaption("Order No."))
            {}
            column(ShowOrderNo;ShowOrderNo)
            {}
        }
      addfirst(header)
      {
        dataitem(Field;Field)
        {
            column(FieldName;FieldName)
            {}
        }
      }
    }

    requestpage
    {
        layout
        {
            addfirst(Options)
            {
                field(ShowOrderNo; ShowOrderNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Add the new fields to the layout of the report';
                    Caption = 'Show Order Number';
                }
            }
        }
    }
    var
        ShowOrderNo: Boolean;
}