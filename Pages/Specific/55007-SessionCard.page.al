page 55007 "Session Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Sessions;
    Caption = 'Session';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Session Id"; Rec."Session Id")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Cash Id"; Rec."Cash Id")
                {
                    ApplicationArea = All;
                }
                field("User Pos id"; Rec."User id")
                {
                    ApplicationArea = All;

                }
                field("Cash User email"; Rec."Cash User email")
                {
                    ApplicationArea = all;
                }
                field("Initial Amount"; Rec."Initial Amount")
                {
                    ApplicationArea = All;
                    Editable = Editable_G;
                }
                // field("Final Amount"; Rec."Final Amount")
                // {
                //     ApplicationArea = All;
                // }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Opening Date&Hour"; Rec."Opening Date&Hour")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Closing Date&Hour"; Rec."Closing Date&Hour")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Total transactions"; Rec."Total transactions")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Total collection"; Rec."Total collection")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Total expenses"; Rec."Total expenses")
                {
                    ApplicationArea = all;
                    Editable = false;
                }





            }

        }



    }





    actions
    {
        area(Processing)
        {

            group("Update status")
            {

                Caption = 'Update status';
                action("Opening")
                {
                    Image = Open;
                    ApplicationArea = All;
                    Caption = 'Opening';
                    trigger OnAction()
                    begin
                        Rec.Status := Rec.Status::Open;
                        Rec."Opening Date&Hour" := CurrentDateTime;
                    end;
                }
                action("Put On Hold")
                {
                    Image = ServiceHours;
                    ApplicationArea = All;
                    Caption = 'Put On Hold';
                    trigger OnAction()
                    begin
                        Rec.Status := Rec.Status::"Put On Hold";

                    end;
                }
            }
            group(Validation)

            {
                action("Create Order")
                {
                    Image = CreateInventoryPick;
                    ApplicationArea = All;
                    Caption = 'Create Order';
                    trigger OnAction()
                    var
                        session: record Sessions;
                        Order: Record "Create Order";
                        CreateOrder: Page "Create Order";
                    begin
                        Order.Init();
                        Order."Session Id" := Rec."Session Id";
                        Order.Insert(true);
                        Order."Order Date" := CurrentDateTime;
                        Order.Modify(true);
                        Order.SetRange("Order Date", Order."Order Date");
                        if Order.FindLast() then begin
                            CreateOrder.SetTableView(Order);
                            CreateOrder.Run();
                        end;

                    end;
                }
            }
            action("Closing")
            {
                Image = Closed;
                ApplicationArea = All;
                Caption = 'Closing';
                PromotedCategory = Process;
                PromotedIsBig = true;
                Promoted = true;
                trigger OnAction()
                var

                    Date: DateTime;
                begin
                    Rec.TestField(Status, Rec.Status::"Open");
                    Message(txt0);
                    Date := CurrentDateTime + (8 * 60 * 60 * 1000);
                    Rec."Closing Date&Hour" := Date;


                end;
            }
        }
    }
    var
        txt0: Label 'You cant close the session, the status is put on hold';
        session: Record Sessions;
        Editable_G: Boolean;

    trigger OnAfterGetRecord()
    var
        CashRegister_L: Record "Cash Register Pos";
    begin

        if CashRegister_L.Get(rec."Cash Id") then begin
            if CashRegister_L."Authorized cash fund" then
                Editable_G := true
            else
                Editable_G := false;
        end;




    end;
}