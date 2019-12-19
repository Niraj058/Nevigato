<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resort.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<head id="Head1" runat="server">
    <title></title>
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine2/style.css" />
<script type="text/javascript" src="engine2/jquery.js"></script>
 <style type="text/css"> 
        .tbox
{
border:2px solid #b3b3b3;
background:white;
width:200px;
border-radius:25px;
-moz-border-radius:25px; 
-moz-box-shadow:    1px 1px 1px #ccc;
-webkit-box-shadow: 1px 1px 1px 1px #ccc;
 box-shadow:         1px 2px 2px 2px #ccc;
}
        </style>
</head>
<body style="background-color:skyblue">
    <form id="form1" runat="server" style="font-size:24px">
  <div style="text-align:right">
      <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data2/images/r1.jpg" alt="r1" title="r1" id="wows1_0"/></li>
		<li><img src="data2/images/r2.jpg" alt="r2" title="r2" id="wows1_1"/></li>
		<li><a href="http://wowslider.net"><img src="data2/images/r3.jpg" alt="carousel jquery" title="r3" id="wows1_2"/></a></li>
		<li><img src="data2/images/r4.jpg" alt="r4" title="r4" id="wows1_3"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="r1"><span><img src="data2/tooltips/r1.jpg" alt="r1"/>1</span></a>
		<a href="#" title="r2"><span><img src="data2/tooltips/r2.jpg" alt="r2"/>2</span></a>
		<a href="#" title="r3"><span><img src="data2/tooltips/r3.jpg" alt="r3"/>3</span></a>
		<a href="#" title="r4"><span><img src="data2/tooltips/r4.jpg" alt="r4"/>4</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">jquery slideshow</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine2/wowslider.js"></script>
<script type="text/javascript" src="engine2/script.js"></script>
<!-- End WOWSlider.com BODY section -->

        <center><h1 style="color:white">Resort</h1>
        <br />
        <br />
<h3 style="color:white"> Fill your Details</h3></center>

      <asp:Panel ID="pan" runat="server" BorderStyle="solid" BorderWidth="1px" >
        <p style="color:green">
             
            
            <asp:Label ID="Label1" runat="server"> Enter First Name : </asp:Label>
            <asp:TextBox class="tbox"  ID="TextBox1" runat="server" CausesValidation="true" TextMode="SingleLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf1" ControlToValidate="TextBox1" ErrorMessage="This Field is Required" runat="server" Display="Dynamic" Width></asp:RequiredFieldValidator>
            <br />
            <br />
              <asp:Label ID="Label2" runat="server">Enter Last name : </asp:Label>
              <asp:TextBox class="tbox"  ID="TextBox2" runat="server" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" ErrorMessage="This Field is Required" runat="server" Display="Dynamic" Width></asp:RequiredFieldValidator>  
            <br />
              <br />
              <asp:Label ID="Label3" runat="server">Enter Email : </asp:Label>
              <asp:TextBox class="tbox" TextMode="email"  ID="TextBox3" runat="server" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" ErrorMessage="This Field is Required" runat="server" Display="Dynamic" Width></asp:RequiredFieldValidator>
              <br />
              <br />
              <asp:Label ID="Label4" runat="server">Enter No of People : </asp:Label>
             <asp:TextBox class="tbox" TextMode="number" CausesValidation="true" ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RangeValidator ErrorMessage="Enter valid Data" MinimumValue="1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" MaximumValue="10"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox4" ErrorMessage="This Field is Required" runat="server" Display="Dynamic" Width></asp:RequiredFieldValidator>
              <br />
              <br />
              <asp:Label ID="Label5" runat="server">Enter Room Type : </asp:Label>
              <asp:TextBox class="tbox"  CausesValidation="true" ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox5" ErrorMessage="This Field is Required" runat="server" Display="Dynamic" Width></asp:RequiredFieldValidator>  
            <br />
              <br />
              <asp:Label ID="Label6" runat="server">Enter check in Date : </asp:Label>
              <asp:TextBox class="tbox" TextMode="date" CausesValidation="true"  ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RangeValidator runat="server" MinimumValue="27/04/2018" Display="Dynamic" ControlToValidate="TextBox6" MaximumValue="31/12/9999" ErrorMessage="Want to book rooms in past Get a Time Machine"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox6" ErrorMessage="This Field is Required" runat="server" Display="Dynamic" Width></asp:RequiredFieldValidator>
              <br />
              <br />
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
              <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Display" />
          </p>
      </asp:Panel>

    </div>
    </form>
</body>
</html>
