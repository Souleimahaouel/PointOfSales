page 55009 "Create Order"
{
    PageType = Worksheet;
    Caption = 'Create Order';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Create Order";
    Editable = true;
    layout
    {
        area(Content)
        {
            grid(commande)
            {
                group("Order Information")
                {
                    Caption = 'Order Information';
                    field("Session Id"; Rec."Session Id")
                    {
                        ApplicationArea = All;
                        //Editable = true;

                    }
                    field("Order Id"; Rec."Order Id")
                    {
                        ApplicationArea = All;
                    }
                    field("User Id"; Rec."User Id")
                    {
                        ApplicationArea = All;

                    }
                    field("Order Date"; Rec."Order Date")
                    {
                        ApplicationArea = All;
                        Editable = false;

                    }

                }
                group("Customer Information")
                {
                    Caption = 'Customer Information';
                    field("Customer Id"; Rec."Customer Id")
                    {
                        ApplicationArea = All;

                    }
                    field("Full Name"; Rec."Full Name")
                    {
                        ApplicationArea = All;
                    }
                    field(City; Rec.City)
                    {
                        ApplicationArea = All;
                    }
                    field("Phone Number"; Rec."Phone Number")
                    {
                        ApplicationArea = All;
                    }
                    field("Fidelity Card"; Rec."Fidelity Card")
                    {
                        ApplicationArea = All;
                    }
                }
            }
            grid(number2)
            {
                group("")
                {
                    usercontrol("Interface Caisse"; "Interface Caisse")
                    {
                        ApplicationArea = all;

                        trigger ControlReady()
                        begin
                            CurrPage."Interface Caisse".AppendElement();
                        end;
                    }

                }
                group(" ")
                {
                    part("Session Part"; "Session Part")
                    {
                        Caption = 'Items';
                        ApplicationArea = All;
                    }

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


    var
        myInt: Integer;
}