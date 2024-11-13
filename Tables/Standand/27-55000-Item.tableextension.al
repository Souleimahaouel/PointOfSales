tableextension 55000 "Items EXT" extends Item //27
{
    Caption = 'Cash Items';

    fields
    {
        field(55000; "Cash Item"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Item';

        }
    }

    keys
    {

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}