using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.IO;
using System.Xml;
using System.Net;
using System.Net.Sockets;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
             //this line is to check the clien ip address from the server itself
        string IP = "";

        string strHostName = "";
        strHostName = System.Net.Dns.GetHostName();

        IPHostEntry ipEntry = System.Net.Dns.GetHostEntry(strHostName);

        IPAddress[] addr = ipEntry.AddressList;

        IP = addr[2].ToString();

        //Initializing a new xml document object to begin reading the xml file returned
        XmlDocument doc = new XmlDocument();           
        doc.Load("http://www.freegeoip.net/xml");       
        XmlNodeList nodeLstCity = doc.GetElementsByTagName("City");     
        IP = nodeLstCity[0].InnerText;
       Response.Write(IP);
        //this is my header that I love
    }
    
}
