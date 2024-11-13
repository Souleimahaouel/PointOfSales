tableextension 55001 "Customer EXT" extends Customer //18
{
    Caption = 'Cash Customer';

    fields
    {
        field(55001; "Cash Customer"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Customer';

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