table 55006 "Users Pos"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "first-name"; Text[30])
        {
            Caption = 'first-name';
            DataClassification = ToBeClassified;
        }
        field(2; "last-name"; Text[30])
        {
            Caption = 'first-name';
            DataClassification = ToBeClassified;
        }

        field(3; Password; Code[40])
        {
            Caption = 'Password';
            DataClassification = ToBeClassified;
        }
        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
        field(5; E_mail; Text[80])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(6; "PhoneNumber"; Text[30])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(7; "BirthDate"; Date)
        {
            Caption = 'Birth Date';
            DataClassification = ToBeClassified;
        }
        field(8; "Operating Mode"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Operating Mode';
            TableRelation = "Activity Cash Register";
        }
        field(9; Id; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Id';

        }


    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }





}