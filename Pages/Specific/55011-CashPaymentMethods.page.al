page 55011 "Cash Payment Methods"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Payment Methods";
    Caption = 'Payment Methods';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Cash Id"; Rec."Cash Id")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Payment methods Code"; Rec."Payment methods Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}