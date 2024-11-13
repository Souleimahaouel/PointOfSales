pageextension 55000 "Customer EXT" extends "Customer List" //22
{
    Caption = 'Customer';


    layout
    {
        addafter(Contact)
        {

            field("Cash Customer"; Rec."Cash Customer")
            {
                ApplicationArea = All;
                Caption = 'Cash Customer';

            }

        }

    }

    actions
    {

    }
}