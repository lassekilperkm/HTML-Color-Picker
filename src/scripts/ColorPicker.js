function colorChangeEvent(event)
{
    //Return the selected color to business central
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("GetSelectedColor",[event.target.value]); 
}
function SetColor(color)
{
    //set the color which is passed from business central
    document.getElementById("colorPicker").value = color;
}