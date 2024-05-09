controladdin ProgressBarWCL
{
    Scripts = 'src/script.js';
    StartupScript = 'src/startup.js';
    StyleSheets = 'src/progressbar.css';
    MinimumHeight = 50;
    MaximumHeight = 50;
    HorizontalStretch = true;
    event ControlAddinReady();  //Event when the controlAddIn is ready
    procedure SetProgress(Progress: Integer; Animation: Boolean);
}