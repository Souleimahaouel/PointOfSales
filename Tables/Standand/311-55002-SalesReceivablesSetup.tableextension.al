tableextension 55002 "Sales Setup EXT" extends "Sales & Receivables Setup" //311
{


    fields
    {
        field(55002; "Cash ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Number';
            TableRelation = "No. Series";
        }
        field(55003; "Session Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Session Number';
            TableRelation = "No. Series";
        }
        field(55004; "Order Id"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Number';
            TableRelation = "No. Series";
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