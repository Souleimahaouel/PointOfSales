pageextension 55001 "Sales Setup" extends "Sales & Receivables Setup" //459
{

    layout
    {
        addafter("Posted Prepmt. Cr. Memo Nos.")
        {

            field("Cash ID"; Rec."Cash ID")
            {
                ApplicationArea = All;
                Caption = 'Cash Number';

            }
            field("Session Id"; Rec."Session Id")
            {
                ApplicationArea = All;
                Caption = 'Session Id';

            }
            field("Order Id"; Rec."Order Id")
            {
                ApplicationArea = all;
                Caption = 'Order Id';
            }

        }

    }

    actions
    {

    }
}