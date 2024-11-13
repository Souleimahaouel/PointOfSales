pageextension 55004 "Item List EXT" extends "Item List" //31
{
    Caption = 'Item List';

    layout
    {
        addafter(Type)
        {

            field("Cash Item"; Rec."Cash Item")
            {
                ApplicationArea = All;
                Caption = 'Cash Item';

            }

        }

    }

    actions
    {

    }
}