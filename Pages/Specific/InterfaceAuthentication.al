page 55012 "Authentication interface"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(Login)
            {

                usercontrol("Interface Login"; "Interface Login")
                {
                    ApplicationArea = all;

                    trigger ControlReady()
                    begin
                        CurrPage."Interface Login".AppendElements();

                    end;

                    trigger OnLoginBtnClicked(User: Text; Pwd: Text)
                    var
                        userspos: Record "Users Pos";
                        IsAuthenticated: Boolean;
                        session: Page "Session Card";
                        sessions: Record Sessions;
                    begin
                        // Message('%1 - %2', User, Pwd);
                        //  VerifData(User, Pwd);
                        // IsAuthenticated := false;

                        userspos.Reset();
                        userspos.SetRange(Password, Pwd);
                        userspos.SetRange(E_mail, User);
                        if userspos.IsEmpty then
                            // if userspos.Password = Pwd then
                            IsAuthenticated := false
                        else
                            IsAuthenticated := true;
                        if IsAuthenticated then begin
                            Message('Login Successful');
                            sessions.SetRange("Cash User email", User);
                            if sessions.FindLast() then
                                session.SetTableView(sessions);
                            session.Run();

                        end

                        else
                            Message('Invalid Credentials');
                        //   Message('%1 - %2', User, Pwd);


                    end;


                }
                // }
            }

        }
    }


    actions
    {
        area(Processing)
        {
            // action("Load Data")
            // {
            //     ApplicationArea = All;

            //     trigger OnAction()
            //     begin
            //         LoadAndSendData();
            //     end;
            // }
        }
    }
    // procedure VerifData(User: Text; Pwd: Text)
    // var
    //     userspos: Record "Users Pos";
    //     txt01: Label 'User & password validated';
    //     err01: Label 'User & password dont match';
    // begin
    //     if userspos.Get() then
    //         if userspos.FindFirst() then begin

    //             if (userspos.E_mail = User) then
    //                 if (userspos.Password = Pwd) then
    //                     Message(txt01)
    //                 else
    //                     Error(err01);
    //         end;
    // end;





    // procedure LoadAndSendData()
    // var
    //     Userspos: Record "Users Pos";
    //     jsonData: Text;
    //     jsonArray: Text;
    // begin
    //     jsonArray := '[';
    //     if Userspos.FindSet() then begin
    //         repeat
    //             jsonData := '{"first-name":"' + Format(Userspos."first-name") + '", "last-name":"' + Userspos."last-name" + '", "Email":"' + Userspos.E_mail + '","Password":"' + Userspos.Password + '"}';
    //             jsonArray := jsonArray + jsonData + ',';
    //         until Userspos.Next() = 0;
    //     end;
    //     jsonArray := CopyStr(jsonArray, 1, StrLen(jsonArray) - 1) + ']';
    //     CurrPage."Interface Login".SetContent(jsonArray);
    // end;

    var
        myInt: Integer;
        InputText: Text;
}