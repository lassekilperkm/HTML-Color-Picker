tableextension 50100 "Customer Table Ext" extends Customer
{
    fields
    {
        field(50100; "My Color"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'My Color';

        }
    }

}