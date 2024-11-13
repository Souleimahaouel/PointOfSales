table 55004 "Session Part"
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Item Id"; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Id';
            TableRelation = Item;


        }
        field(2; "Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity';
        }
        field(3; "Price"; Decimal)
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Unit Price" where("No." = field("Item Id")));
            Caption = 'Price';
        }
        field(4; "Discount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Discount';
        }
        field(5; "Price Incl. Tax"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Price Incl. Tax';

        }
        field(6; "Session Id"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Session Id';
            TableRelation = Sessions;

        }
        field(7; "Line"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Line';

        }
        field(8; "Inventory"; Decimal)
        {
            CalcFormula = sum("Item Ledger Entry".Quantity where("Item No." = field("Item Id")));
            FieldClass = FlowField;
            DecimalPlaces = 0 : 5;
            Editable = false;
            Caption = 'Inventory';
        }

    }


    keys
    {
        key(PK; "Session Id", Line)
        {
            Clustered = true;

        }
    }



    fieldgroups
    {
        // Add changes to field groups here
    }



}