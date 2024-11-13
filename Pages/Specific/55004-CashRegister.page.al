page 55004 "Cash Register"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Cash Register Pos";
    Caption = 'Cash Register';
    CardPageId = "Cash Register Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Cash Id"; Rec."Cash Id")
                {
                    ApplicationArea = All;

                }
                field("Point of sale"; Rec."Point of sale")
                {
                    ApplicationArea = All;

                }
                field("Authorized cash fund"; Rec."Authorized cash fund")
                {
                    ApplicationArea = all;
                }

                field(Active; Rec.Active)
                {
                    ApplicationArea = all;
                }

            }
        }

    }
    trigger OnAfterGetRecord()
    var
    begin
        //     Stylestatus := ChangeColorStatus.ChangeTheColorOfStatus(Rec);
    end;

    var
        Stylestatus: Text[50];
        ChangeColorStatus: Codeunit ChangeColorStatus;


}