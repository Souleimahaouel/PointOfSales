page 55001 "Cash Register User"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Cash Register Users";
    Caption = 'Cash Register User';
    CardPageId = "Cash Register User Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("User Code"; Rec."User Code")
                {
                    ApplicationArea = All;


                }
                field(FirstName; Rec.FirstName)
                {
                    ApplicationArea = All;

                }
                field(SecondName; Rec.SecondName)
                {
                    ApplicationArea = All;

                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }
                field(Activity; Rec.Activity)
                {
                    ApplicationArea = All;

                }
                field(E_mail; Rec.E_mail)
                {
                    ApplicationArea = All;

                }
                field(PhoneNumber; Rec.PhoneNumber)
                {
                    ApplicationArea = All;

                }
                field(BirthDate; Rec.BirthDate)
                {
                    ApplicationArea = All;
                }

            }
        }

    }


}