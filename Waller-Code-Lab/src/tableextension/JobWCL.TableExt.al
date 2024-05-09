tableextension 50100 JobWCL extends Job
{
    fields
    {
        field(50100; MyProgress; Integer)
        {
            Caption = 'Progress';
            DataClassification = CustomerContent;
            MaxValue = 100;
            MinValue = 0;
        }
    }
}
