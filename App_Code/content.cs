using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for content
/// </summary>
public class content
{
    // avbDBDataContext - data context

    public IQueryable<avb_content> getContentByPage(string _page)
    {
        // create an instance of our LINQ object
        avbDBDataContext objContentDC = new avbDBDataContext();
        var content = objContentDC.avb_contents.Where(x => x.page == _page).Select(x => x);
        return content;
    }

}