using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for contactform
/// </summary>
public class contactform
{
    // avbDBDataContext - data context

    // Insert contact message into database
    public bool insertContact(string _topic, string _name, string _email, string _message, string _newsletter)
    {
        // create an instance of our LINQ object
        avbDBDataContext objContactDC = new avbDBDataContext();
        // to ensure that all data will be disposed when finished
        using (objContactDC)
        {
            // create instance of our table object
            avb_contact objNewContact = new avb_contact();
            // set values
            objNewContact.topic = _topic;
            objNewContact.name = _name;
            objNewContact.email = _email;
            objNewContact.message = _message;
            objNewContact.newsletter = _newsletter;
            // insert command
            objContactDC.avb_contacts.InsertOnSubmit(objNewContact);
            // commit insert against database
            objContactDC.SubmitChanges();
            return true;
        }
    }

}