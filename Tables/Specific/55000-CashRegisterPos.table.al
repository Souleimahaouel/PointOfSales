table 55000 "Cash Register Pos"
{
    DataClassification = ToBeClassified;
    Caption = 'Cash Register';

    fields
    {
        field(1; "Cash Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Id';
            Editable = false;
            trigger OnValidate()
            begin
                TestNoSeries();
            end;
        }

        field(2; "Point of sale"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Point Of Sale';
        }
        /* field(3; "Operating Mode"; Code[50])
         {
             DataClassification = ToBeClassified;
             Caption = 'Operating Mode';
             TableRelation = "Activity Cash Register";
         }*/
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5; "Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Amount';
        }
        field(6; Active; boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Active';
        }
        field(7; "Authorized cash fund"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Authorized cash fund';
        }
        field(8; "Total transactions"; Decimal)
        {
            // FieldClass = FlowField;
            Caption = 'Total transactions';
            //CalcFormula=sum();
        }
        field(9; "Total collection"; Decimal)
        {
            //  FieldClass = FlowField;
            Caption = 'Total collection';
            //CalcFormula=sum();
        }
        field(10; "Total expenses"; Decimal)
        {
            // FieldClass = FlowField;
            Caption = 'Total expenses';
            // CalcFormula=sum();
        }
        field(11; "Authorized Credit Sale"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Authorized Credit Sale';
        }



    }

    keys
    {
        key(PK; "Cash Id")
        {
            Clustered = true;
        }
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeries: Codeunit "No. Series";

    trigger OnInsert()
    var
        CashRegister: Record "Cash Register pos";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        IsHandled: Boolean;
    begin
        IsHandled := false;
        if IsHandled then
            exit;
        if "Cash Id" = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Cash ID");
            "No. Series" := SalesSetup."Cash ID";
            "Cash Id" := NoSeries.GetNextNo("No. Series");
        end;


    end;


    local procedure TestNoSeries()
    var
        CashRegister: Record "Cash Register pos";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        if IsHandled then
            exit;
        if "Cash Id" <> xRec."Cash Id" then
            if not CashRegister.Get(Rec."Cash Id") then begin
                SalesSetup.Get();
                NoSeries.TestManual(SalesSetup."Cash ID");
                "No. Series" := '';

            end;
    end;



}