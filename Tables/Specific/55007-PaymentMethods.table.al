table 55007 "Payment Methods"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cash Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Id';
            TableRelation = "Cash Register Pos";
        }
        field(2; "Payment methods Code"; code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment methods Code';
            TableRelation = "Payment Method";
            trigger OnValidate()
            var
                PaymentMethod_L: Record "Payment Method";
            begin
                if PaymentMethod_L.Get("Payment methods Code") then begin
                    Description := PaymentMethod_L.Description;
                end;
            end;
        }

        field(3; "Description"; Text[255])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';

        }

    }

    keys
    {
        key(PK; "Cash Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }



}