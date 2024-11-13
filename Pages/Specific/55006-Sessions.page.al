page 55006 Sessions
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Sessions;
    CardPageId = "Session Card";
    Caption = 'Session';
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Session Id"; Rec."Session Id")
                {
                    ApplicationArea = All;
                }
                field("Cash Id"; Rec."Cash Id")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    StyleExpr = stylestatus;
                }
                field("Cash User email"; Rec."Cash User email")
                {
                    ApplicationArea = all;
                }
            }

        }

    }
    var
        stylestatus: Text;


}