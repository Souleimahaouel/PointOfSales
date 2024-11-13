page 55005 "Cash Register Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Cash Register Pos";
    Caption = 'Cash Register';

    layout
    {
        area(Content)
        {
            group(General)

            {
                Caption = 'General';
                field("Cash Id"; Rec."Cash Id")
                {
                    ApplicationArea = All;

                }
                field("Point of sale"; Rec."Point of sale")
                {
                    ApplicationArea = All;

                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = all;
                    Caption = 'Creation Date';
                    Editable = false;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
                field("Authorized cash fund"; Rec."Authorized cash fund")
                {
                    ApplicationArea = all;
                }
                field("Total transactions"; Rec."Total transactions")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Total collection"; Rec."Total collection")
                {
                    Editable = false;
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        MethPayment: Record "Payment Methods";
                        PaymentMeth: page "Cash Payment Methods";
                    begin
                        MethPayment.Reset();
                        MethPayment.SetRange("Cash Id", MethPayment."Cash Id");
                        if MethPayment.FindFirst() then begin
                            PaymentMeth.SetTableView(MethPayment);
                            PaymentMeth.LookupMode();
                        end;
                    end;
                }
                field("Total expenses"; Rec."Total expenses")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Authorized Credit Sale"; Rec."Authorized Credit Sale")
                { ApplicationArea = all; }



            }
            part("Cash Payment Methods"; "Cash Payment Methods")
            {
                ApplicationArea = All;
                UpdatePropagation = Both;
                SubPageLink = "Cash Id" = field("Cash Id");

            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Add Session")
            {
                ApplicationArea = All;
                Image = AddAction;
                Caption = 'Add Session';
                // RunObject = page "Session Card";
                // RunPageMode = Create;
                // RunPageLink = "Cash Id" = field("Cash Id");
                trigger OnAction()
                var
                    Error001: Label 'Cash register is inactive, you cant open a session.';
                    SessionCard: Page "Session Card";
                    session: Record Sessions;
                    session2: Record Sessions;
                    InterfaceLogin: Page "Authentication interface";

                begin
                    if Rec.Active = false then
                        Error(Error001);
                    Clear(SessionCard);
                    session.Init();
                    session."Session Id" := '';
                    session."Cash Id" := Rec."Cash Id";
                    session."Opening Date&Hour" := CurrentDateTime;
                    session.Insert(true);
                    session2.Reset();
                    session2.SetRange("Session Id", session."Session Id");
                    if session2.FindLast() then begin
                        // Message(session2."Session Id");
                        SessionCard.SetTableView(session2);
                        InterfaceLogin.Run();
                        //  SessionCard.Run();
                    end;
                end;






            }


        }
    }


}