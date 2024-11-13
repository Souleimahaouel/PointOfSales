page 55008 "Session Part"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Session Part";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Item Id"; Rec."Item Id")
                {
                    ApplicationArea = All;
                    TableRelation = Item;

                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;

                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    TableRelation = Item;

                }
                field(Discount; Rec.Discount)
                {
                    ApplicationArea = All;

                }
                field("Price Incl. Tax"; Rec."Price Incl. Tax")
                {
                    ApplicationArea = All;

                }
                field("Session Id"; Rec."Session Id")
                {
                    Visible = false;
                    ApplicationArea = all;
                }
                field(Line; Rec.Line)
                {
                    ApplicationArea = all;
                    Visible = false;
                }
                field(Inventory; Rec.Inventory)
                {
                    ApplicationArea = all;
                }


            }
        }

    }


}