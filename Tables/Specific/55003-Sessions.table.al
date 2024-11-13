table 55003 "Sessions"
{
    DataClassification = ToBeClassified;
    Caption = 'Sessions';

    fields
    {
        field(1; "Session Id"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Session Id';

            trigger OnValidate()
            begin
                TestNoSeries();
            end;

        }

        field(2; "User id"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'User Name';
            TableRelation = "Users Pos";
        }
        field(4; "Initial Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            //  FieldClass = FlowField;

            Caption = 'Initial Amount';
        }
        field(5; "Final Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Final Amount';
            //  FieldClass = FlowField;
        }
        field(6; Status; Enum Status)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }
        field(7; "Cash Id"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Id';
            TableRelation = "Cash Register pos";
            Editable = false;

        }
        field(8; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(9; "Opening Date&Hour"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Opening Date&Hour';

        }
        field(10; "Closing Date&Hour"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Closing Date&Hour';
        }


        field(13; "Cash Fund"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash Fund';
        }
        field(14; "Total transactions"; Decimal)
        {
            // FieldClass = FlowField;
            Caption = 'Total transactions';
        }
        field(15; "Total collection"; Decimal)
        {
            // FieldClass = FlowField;
            Caption = 'Total collection';
            //CalcFormula=sum();
        }
        field(16; "Total expenses"; Decimal)
        {
            // FieldClass = FlowField;
            Caption = 'Total expenses';
            // CalcFormula=sum();
        }
        field(17; "Theoritical Total"; Decimal)
        {
            //FieldClass = FlowField;
            Caption = 'Total';
            //CalcFormula=sum();
        }
        field(18; "Cash User email"; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cash User email';

        }



    }

    keys
    {
        key(PK; "Session Id")
        {
            Clustered = true;
        }
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeries: Codeunit "No. Series";

    trigger OnInsert()
    var
        Session: Record "Sessions";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        IsHandled: Boolean;
    begin
        IsHandled := false;
        if IsHandled then
            exit;
        if "Session Id" = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Session Id");
            "No. Series" := SalesSetup."Session Id";
            "Session Id" := NoSeries.GetNextNo("No. Series");
        end;


    end;

    local procedure TestNoSeries()
    var
        Session: Record "Session";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        if IsHandled then
            exit;
        if "Session Id" <> xRec."Session Id" then
            if not Session.Get(Rec."Session Id") then begin
                SalesSetup.Get();
                NoSeries.TestManual(SalesSetup."Session Id");
                "No. Series" := '';

            end;
    end;




}