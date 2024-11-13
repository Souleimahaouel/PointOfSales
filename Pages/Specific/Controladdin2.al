controladdin "Interface Caisse"
{
    RequestedHeight = 550;
    // MinimumHeight = 300;
    //MaximumHeight = 300;
    RequestedWidth = 250;
    //MinimumWidth = 700;
    //MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts =
        'Layouts\calc.js';
    StyleSheets =
        'Layouts\style1.css';
    StartupScript = 'Layouts\startup.js';


    procedure InitializeIFrame(ratio: Text);
    procedure SetContent(html: Text);
    procedure SetContent(html: Text; javascript: text);
    procedure SubscribeToEvent(eventName: Text;
     origin: Text);
    event ControlAddInReady(callbackUrl: Text);
    event ControlReady();

    procedure AppendElement()

}