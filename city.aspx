<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
</head>
<body style="background-color:blanchedalmond">

    <marquee><h1 style="text-align:center;color:green">The PLaces Around You</h1></marquee>

    <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/g_3.jpg" alt="g_3" title="g_3" id="wows1_0"/></li>
		<li><img src="data1/images/g1.jpg" alt="g1" title="g1" id="wows1_1"/></li>
		<li><img src="data1/images/g2.jpg" alt="g2" title="g2" id="wows1_2"/></li>
		<li><img src="data1/images/gu_2.jpg" alt="gu_2" title="gu_2" id="wows1_3"/></li>
		<li><img src="data1/images/gu_4.jpg" alt="gu_4" title="gu_4" id="wows1_4"/></li>
		<li><img src="data1/images/gu1.jpg" alt="gu1" title="gu1" id="wows1_5"/></li>
		<li><img src="data1/images/m_1.jpg" alt="M_1" title="M_1" id="wows1_6"/></li>
		<li><img src="data1/images/m_2.jpg" alt="m_2" title="m_2" id="wows1_7"/></li>
		<li><img src="data1/images/m_3.jpg" alt="m_3" title="m_3" id="wows1_8"/></li>
		<li><img src="data1/images/m_4.jpg" alt="m_4" title="m_4" id="wows1_9"/></li>
		<li><img src="data1/images/r_1.jpg" alt="r_1" title="r_1" id="wows1_10"/></li>
		<li><a href="http://wowslider.net"><img src="data1/images/r_2.jpg" alt="html5 slideshow" title="r_2" id="wows1_11"/></a></li>
		<li><img src="data1/images/r_3.jpg" alt="r_3" title="r_3" id="wows1_12"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="g_3"><span><img src="data1/tooltips/g_3.jpg" alt="g_3"/>1</span></a>
		<a href="#" title="g1"><span><img src="data1/tooltips/g1.jpg" alt="g1"/>2</span></a>
		<a href="#" title="g2"><span><img src="data1/tooltips/g2.jpg" alt="g2"/>3</span></a>
		<a href="#" title="gu_2"><span><img src="data1/tooltips/gu_2.jpg" alt="gu_2"/>4</span></a>
		<a href="#" title="gu_4"><span><img src="data1/tooltips/gu_4.jpg" alt="gu_4"/>5</span></a>
		<a href="#" title="gu1"><span><img src="data1/tooltips/gu1.jpg" alt="gu1"/>6</span></a>
		<a href="#" title="M_1"><span><img src="data1/tooltips/m_1.jpg" alt="M_1"/>7</span></a>
		<a href="#" title="m_2"><span><img src="data1/tooltips/m_2.jpg" alt="m_2"/>8</span></a>
		<a href="#" title="m_3"><span><img src="data1/tooltips/m_3.jpg" alt="m_3"/>9</span></a>
		<a href="#" title="m_4"><span><img src="data1/tooltips/m_4.jpg" alt="m_4"/>10</span></a>
		<a href="#" title="r_1"><span><img src="data1/tooltips/r_1.jpg" alt="r_1"/>11</span></a>
		<a href="#" title="r_2"><span><img src="data1/tooltips/r_2.jpg" alt="r_2"/>12</span></a>
		<a href="#" title="r_3"><span><img src="data1/tooltips/r_3.jpg" alt="r_3"/>13</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">bootstrap image slider</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
      
    <form id="form1" runat="server">
    <div>
 <br />
        <br />
        <center>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="State">
            <asp:ListItem Text="Select Your Destination"></asp:ListItem>
                  <asp:ListItem Text="Gujrat"></asp:ListItem>
                  <asp:ListItem Text="Rajasthan"></asp:ListItem>
                  <asp:ListItem Text="Goa"></asp:ListItem>
                  <asp:ListItem Text="Maharastra"></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [State] FROM [Visit]"></asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Find Places Around You" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="State" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="579px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="State" HeaderText="State" ReadOnly="True" SortExpression="State" />
                    <asp:BoundField DataField="Place 1" HeaderText="Place 1" SortExpression="Place 1" />
                    <asp:BoundField DataField="Place 2" HeaderText="Place 2" SortExpression="Place 2" />
                    <asp:BoundField DataField="Place 3" HeaderText="Place 3" SortExpression="Place 3" />
                    <asp:BoundField DataField="Place 4" HeaderText="Place 4" SortExpression="Place 4" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Visit] WHERE ([State] = @State)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="State" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </center>
        </div>
    </form>
</body>
</html>
