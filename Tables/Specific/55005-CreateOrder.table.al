table 55005 "Create Order"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Session Id"; Code[50])
        {
            Caption = 'Session Id';
            DataClassification = ToBeClassified;
            TableRelation = Sessions;
        }
        field(2; "Order Id"; Code[30])
        {
            Caption = 'Order Id';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                TestNoSeries();
            end;
        }
        field(3; "User Id"; Code[30])
        {
            Caption = 'User Id';
            DataClassification = ToBeClassified;
            TableRelation = "Users Pos";
        }
        field(4; "Order Date"; DateTime)
        {
            Caption = 'Order Date';
            DataClassification = ToBeClassified;
        }

        field(6; "Customer Id"; Text[50])
        {
            Caption = 'Customer Id';
            DataClassification = ToBeClassified;
            TableRelation = "Customer";
        }
        field(7; "Full Name"; Text[50])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }
        field(8; "City"; Text[50])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(9; "Phone Number"; Code[30])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(10; "Fidelity Card"; Code[30])
        {
            Caption = 'Fidelity Card';
            DataClassification = ToBeClassified;
        }
        field(11; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }


    }

    keys
    {
        key(PK; "Order Id")
        {
            Clustered = true;
        }
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeries: Codeunit "No. Series";

    trigger OnInsert()
    var
        Order: Record "Create Order";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        IsHandled: Boolean;
    begin
        if "Order Id" = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Order Id");
            "No. Series" := SalesSetup."Order Id";
            "Order Id" := NoSeries.GetNextNo("No. Series");
        end;
    end;

    local procedure TestNoSeries()
    var
        Order: Record "Create Order";
        IsHandled: Boolean;
    begin

        if "Order Id" <> xRec."Order Id" then
            if not Order.Get(Rec."Order Id") then begin
                SalesSetup.Get();
                NoSeries.TestManual(SalesSetup."Order Id");
                "No. Series" := '';

            end;
    end;




}