table 55002 "Activity Cash Register"
{
    DataClassification = ToBeClassified;
    Caption = 'Activity Cash Register';

    fields
    {
        field(1; "UserRole"; Code[50])
        {
            Caption = 'User Role';
            DataClassification = ToBeClassified;

        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(PK; "UserRole")
        {
            Clustered = true;
        }
    }





}