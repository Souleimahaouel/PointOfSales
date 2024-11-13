page 55010 "Users Pos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Users Pos";
    Caption = 'Users Pos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("first-name"; Rec."first-name")
                {
                    ApplicationArea = All;

                }
                field("last-name"; Rec."last-name")
                {
                    ApplicationArea = All;
                }
                field(Password; Rec.Password)
                {
                    ApplicationArea = All;
                    // Visible = false;
                    // ExtendedDatatype = Masked;
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field(E_mail; Rec.E_mail)
                { ApplicationArea = All; }
                field(PhoneNumber; Rec.PhoneNumber) { ApplicationArea = All; }
                field(BirthDate; Rec.BirthDate) { ApplicationArea = All; }
                field("Operating Mode"; Rec."Operating Mode")
                {
                    ApplicationArea = All;
                }
                field(Id; Rec.Id)
                {
                    ApplicationArea = all;
                    //  Visible = false;
                }
            }
        }
        area(Factboxes)
        {

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