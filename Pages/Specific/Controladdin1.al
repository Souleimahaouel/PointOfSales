controladdin "Interface Login"
{
    RequestedHeight = 1000;
    // MinimumHeight = 300;
    // MaximumHeight = 300;
    RequestedWidth = 2000;
    // MinimumWidth = 700;
    // MaximumWidth = 700;
    VerticalStretch = true;
    //VerticalShrink = true;
    HorizontalStretch = true;
    //HorizontalShrink = true;

    Scripts =
        'Layouts\script.js';
    StyleSheets =
        'Layouts\style.css';

    StartupScript = 'Layouts/startup.js';


    procedure InitializeIFrame(ratio: Text);
    procedure SetContent(html: Text);
    procedure SetContent(html: Text; javascript: text);
    procedure SubscribeToEvent(eventName: Text;
     origin: Text);
    event ControlAddInReady(callbackUrl: Text);
    event ControlReady();


    procedure AppendElements();
    // procedure LoadAndSendData();


    event OnLoginBtnClicked(User: Text; Pwd: Text)

}