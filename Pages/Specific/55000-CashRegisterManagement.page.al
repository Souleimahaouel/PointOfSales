page 55000 "Cash Register Management"
{
    PageType = RoleCenter;
    Caption = 'Cash Register Management';

    layout
    {
        area(RoleCenter)
        {


        }
    }

    actions
    {

        area(Sections)
        {
            group("Cash Register Management")

            {
                Caption = 'Cash Register Management';
                action("Open Cash Register User")
                {
                    ApplicationArea = All;
                    Caption = 'Users pos';
                    RunObject = page "Users Pos";
                }
                action("Open Activity Cash Register")
                {
                    ApplicationArea = All;
                    Caption = 'Activity Cash Register List';
                    RunObject = page "Activity Cash Register";
                }
                action("Open Session")
                {
                    ApplicationArea = All;
                    Caption = 'Session';
                    RunObject = page "Sessions";
                }
                action("Open Caisse")
                {
                    ApplicationArea = All;
                    Caption = 'Caisse';
                    RunObject = page "Cash Register";
                }


            }
        }

    }
}