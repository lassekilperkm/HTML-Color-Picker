controladdin HTMLColorPicker
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    Scripts = 'src/scripts/ColorPicker.js';
    StartupScript = 'src/scripts/startup.js';


    //events are triggered from javascript
    event ControlReady();
    event GetSelectedColor(selectedColor: Text);

    //procedures are triggered from al code
    procedure SetColor(color: Text);
}