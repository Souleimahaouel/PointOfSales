codeunit 55000 ChangeColorStatus
{
    /* trigger OnRun()
     begin

     end;


     //procedure ChangeTheColorOfStatus(Cashregister: Record "Cash Register pos"): Text[50]
     var
         i: Integer;
     //begin
         with Cashregister do
             case "Operational Cash" of
                 "Operational Cash"::Active:
                     exit('favorable');
                 "Operational Cash"::Inactive:
                     exit('unfavorable');
             end;

     end;

     procedure ChangeTheColorOfStatusSession(Session: Record Sessions): Text[50]
     var
         i: Integer;
     begin
         with Session do
             case Status of
                 Status::Open:
                     exit('favorable');
                 Status::Closed:
                     exit('unfavorable');
                 Status::"Put On Hold":
                     exit('strong');
             end;

     end;*/



}