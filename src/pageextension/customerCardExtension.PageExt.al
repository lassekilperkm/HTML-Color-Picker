pageextension 50100 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            usercontrol(ColorPicker; HTMLColorPicker)
            {
                ApplicationArea = All;
                trigger ControlReady()
                begin
                    //Get the color from new table field and pass it to the control addin
                    CurrPage.ColorPicker.SetColor(Rec."My Color");
                end;

                trigger GetSelectedColor(selectedColor: Text)
                begin
                    //Set the color
                    Rec."My Color" := CopyStr(selectedColor, 1, MaxStrLen(Rec."My Color"));
                    Rec.Modify();
                end;
            }
        }
    }
}