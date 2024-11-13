page 55003 "Activity Cash Register"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Activity Cash Register";
    Caption = 'Activity Cash Register';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(UserRole; Rec.UserRole)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
        }

    }

    actions
    {

    }
}