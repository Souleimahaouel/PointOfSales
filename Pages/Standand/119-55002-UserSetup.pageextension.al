pageextension 55002 "User Setup EXT" extends "User Setup" //119
{

    layout
    {
        addafter(Email)
        {

            field("Initial Amount"; Rec."Initial Amount")
            {
                ApplicationArea = All;

            }

        }
    }

    actions
    {

    }

    var
        myInt: Integer;
}