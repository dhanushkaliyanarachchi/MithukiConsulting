<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/MainSite.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Travel.Presentation.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <style>
        body {
            background: #333 url(../images/thumbs/bg.jpg) repeat top left;
            font-family: Arial;
        }

        .content {
            width: 1100px;
            margin: 0px auto;
            background-color:;
        }

        .bottle {
            
            width: 1100px;
            margin: 0px auto;
        }

        #img_bottle {
            width: 1100px;
            height: 320px;
        }

        .info {
            background-color:;
            height: 350px;
        }

        h2 {
            color: #30b2eb;
            text-align: center;
        }

        h4 {
            color: white;
        }

        p {
            color: #30b2eb;
            margin-left: 170px;
        }
    </style>

	<div class="content">
		<div class="bottle">
			<img id="img_bottle" src="../images/contactUs/bottle.jpg"/>
		</div>
		
		<div style="width:1100px;height:30px"></div>
		
		<div class="info">
			
<%--			<div style="background-color:;height:350px;width:340px;float:left;margin:0px 0px 0px 25px;border:1px solid white">
				<h2>REACH US</h2>
			</div>--%>
			
			<div style="background-color:;height:350px;width:510px;float:left;margin:0px 0px 0px 25px;border:1px solid white">
				<h2>GENERAL</h2>
				<h4>Contact Address :</h4>
				<p>100/1, Uduwawala, Katugastota</p>
				<h4>Contact Numbers :</h4>
				<p>0716404303</br>0756404303</p>
				<h4>Email :</h4>
				<p>gayan@gmail.com</p>
				<h4>Skype :</h4>
				<p>gayan.trvl</p>
				
			</div>
			
			<div style="background-color:;height:350px;width:510px;float:left;margin:0px 0px 0px 25px;border:1px solid white">
           
                 <h2>MAIL US</h2>

                 <table>
                    <tr>
                        <td><h4>Email :</h4></td>
                        <td>
                            <asp:TextBox ID="txtFrom" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>Password :</h4></td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Message :</h4>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMessage" runat="server" Width="300px" TextMode="MultiLine" Rows="8" Columns="2"></asp:TextBox>
                        </td>
                    </tr>
                   <tr>
                       <td>
                       </td>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
                       </td>
                   </tr>
                </table>
			</div>
			
		</div>

		<div style="width:1100px;height:100px"></div>
		
	</div>


</asp:Content>
