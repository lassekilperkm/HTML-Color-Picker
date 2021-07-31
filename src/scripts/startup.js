//Get the control addin
var controlaAddIn = document.getElementById("controlAddIn");

//add the color picker html input to the control addin
controlaAddIn.innerHTML += "<div><input type=\"color\" id=\"colorPicker\"><label for=\"colorPicker\">Color Picker</label></div>";

//get the color picker HTML element and add event listener
var colorPickerElement = document.getElementById("colorPicker");
colorPickerElement.addEventListener("input", colorChangeEvent, false);
colorPickerElement.addEventListener("change", colorChangeEvent, false);
colorPickerElement.select();
//notify business central that the control is setup
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlReady",[]);