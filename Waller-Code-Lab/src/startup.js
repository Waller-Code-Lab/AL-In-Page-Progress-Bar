var addin = document.getElementById('controlAddIn');
addin.innerHTML = '<div id="myProgress"><div id="myBar">0%</div></div>';

var ProgressIncrement = 0;  

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddinReady',[]); //Makes this event possible to extend with code in Business Central