<%@ Control Language="C#" Inherits="SpeedyApp.Modules.SpeedyAppBasicContact.ViewSpeedyAppBasicContact"
    AutoEventWireup="true" CodeBehind="ViewSpeedyAppBasicContact.ascx.cs" %>
   
    <div id="wrapper" class="row-fluid">
    <div id="form-div" class="form span12">
    <h2><asp:Label ID="lblTitle" runat="server" Text="Contact Us" ></asp:Label> </h2>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="#FF3300"></asp:Label>  
<p>
    <label for="name">
        <asp:Label ID="lblName" runat="server" Text="Name" ></asp:Label><br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="txtName" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator></label>
    <asp:TextBox ID="txtName" runat="server" CssClass="input " MaxLength="50"></asp:TextBox>    
    
</p>
<p>
    <label for="email"><asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label><br />  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="txtEmail" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300" ValidationGroup="SpeedyAppBasicContact"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
            ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="*Please Enter a Valid E-mail Address" 
        ControlToValidate="txtEmail" ForeColor="#FF3300" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        Display="Dynamic" ValidationGroup="SpeedyAppBasicContact"></asp:RegularExpressionValidator></label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="input " MaxLength="50" ValidationGroup="SpeedyAppBasicContact"></asp:TextBox>    
    
 </p>
<p>
    <label for="subject"><asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label><br />  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="txtSubject" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300" ValidationGroup="SpeedyAppBasicContact"></asp:RequiredFieldValidator></label>    
    <asp:TextBox ID="txtSubject" runat="server" CssClass="input " MaxLength="80" ValidationGroup="SpeedyAppBasicContact"></asp:TextBox>    
    
    
 </p>
<p>
    <label for="Message"><asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
    ControlToValidate="txtMessage" ErrorMessage="*" Font-Bold="True" 
        Font-Size="Large" ForeColor="#FF3300" Display="Dynamic" ValidationGroup="SpeedyAppBasicContact"></asp:RequiredFieldValidator></label><br />
    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" 
        CssClass="text-area" ValidationGroup="SpeedyAppBasicContact"></asp:TextBox>
    
    
 </p>
 <br/>
<p>
    <asp:LinkButton ID="btnSend" runat="server" CssClass="large nice black button" 
        ForeColor="White" onclick="btnSend_Click" ValidationGroup="SpeedyAppBasicContact">Send</asp:LinkButton>
 </p>
 </div>
 </div>
<h5><asp:Literal ID="litMessage" runat="server"></asp:Literal></h5>
