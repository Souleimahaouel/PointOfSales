table 55001 "Cash Register Users"
{
    DataClassification = ToBeClassified;
    Caption = 'Cash Register Users';

    fields
    {
        field(1; "User Code"; Code[100])
        {
            Caption = 'User Code';
            DataClassification = ToBeClassified;
            TableRelation = "User Setup";

        }
        field(2; "FirstName"; Text[20])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;

        }
        field(3; "SecondName"; Text[20])
        {
            Caption = 'Second Name';
            DataClassification = ToBeClassified;

        }
        field(4; Activity; Code[100])
        {
            Caption = 'Activity';
            DataClassification = ToBeClassified;
            TableRelation = "Activity Cash Register";
        }
        field(5; Status; Boolean)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        field(6; E_mail; Text[80])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(7; "PhoneNumber"; Text[30])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(8; "BirthDate"; Date)
        {
            Caption = 'Birth Date';
            DataClassification = ToBeClassified;
        }





    }

    keys
    {
        key(PK; "User Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;



}