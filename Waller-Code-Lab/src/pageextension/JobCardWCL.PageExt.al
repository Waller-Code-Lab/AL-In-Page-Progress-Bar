pageextension 50100 JobCardWCL extends "Job Card"
{
    layout
    {
        addlast(General)
        {
            field(MyProgress; Rec.MyProgress)
            {
                ApplicationArea = All;
                Caption = 'Progress';
                ToolTip = 'Specifies the value of the Progress field';
                trigger OnValidate()
                begin
                    CurrPage.ProgressBar.SetProgress(Rec.MyProgress, false);  //Updates the progress bar with an animation when progress is updated
                end;
            }
            usercontrol(ProgressBar; ProgressBarWCL)
            {
                ApplicationArea = All;
                trigger ControlAddinReady()
                begin
                    CurrPage.ProgressBar.SetProgress(Rec.MyProgress, true);  //Sets the progress bar to the value of the progress when the control is ready
                    ProgressBarLoaded := true;
                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        if ProgressBarLoaded then
            CurrPage.ProgressBar.SetProgress(Rec.MyProgress, true);
    end;

    var
        ProgressBarLoaded: Boolean;  //Used to assess whether the progress bar has loaded from the control add in being ready
}
