report 50115 Fahrerliste
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRDLReport.rdl';


    dataset
    {
        dataitem(DataItemName; Employee)
        {
            column(Number; "No.")
            {

            }
            column(First_Name; "First Name")
            {

            }
            column(Last_Name; "Last Name")
            {

            }
            column(Job_Title; "Job Title")
            {

            }

            column(Mobile_Phone; "Mobile Phone No.")
            {

            }
            column(Führerschein; "Führerschein")
            {

            }
        }
    }


}