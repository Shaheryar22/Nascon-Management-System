<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NASCON_MS.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: springgreen;
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
        }
        .background-bar {
            background-color: rgba(139, 69, 19, 0.85); /* Use RGBA for semi-transparent brown */
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Ensure it's above other content */
            padding: 15px 0; /* Increase padding for better visual balance */
            text-align: center;
            color: white;
            font-size: 26px; /* Larger text size for better readability */
            font-family: 'Segoe UI', Helvetica, sans-serif; /* Modern, readable font */
            font-weight: bold; /* Make the text bold */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add shadow for depth */
            box-shadow: 0px 4px 10px rgba(0,0,0,0.25); /* Shadow for the bar itself */
        }

        .heading {
            color: white;
            font-size: 24px;
            margin: 0;
        }
        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background-color: white; /* Set background color to white */
            border-radius: 10px; /* Add border radius for rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add box shadow for depth */
            width: 80%; /* Set the width to 80% of the viewport width */
            max-width: 400px; /* Set a maximum width */
        }
        .form-control {
            margin-bottom: 15px;
            width: 400px; /* Adjust width for smaller screens */
            height: 40px;
            padding: 5px 10px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
        }
        .btn-container {
            width: 100%;
            display: flex;
            justify-content:center; /* Space buttons evenly */
        }
        .btn {
            padding: 10px 20px;
            width: 50%; /* Set button width */
            border: none;
            border-radius: 2px;
            cursor: pointer;
            background-color: #008CBA;
            color: white;
            margin-bottom: 20px;
        }
        .btn:hover {
            background-color: #005F78;
        }
        .signup-text {
            text-align: center;
            margin-top: 20px;
            margin-bottom:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="background-bar">
            <h1>NASCON MANAGEMENT SYSTEM</h1>
        </div>
        <div class="wrapper">
            <div class="container">
                <h2 class="log">Login Faculty</h2>
                <div>
                    <asp:Label runat="server" AssociatedControlID="username" Text="username:"></asp:Label>
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server" AssociatedControlID="password" Text="password:"></asp:Label>
                    <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" placeholder="**********"></asp:TextBox>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn cancel-btn" OnClientClick="window.location.href='your_cancel_url_here';" OnClick="btnCancel_ClickF" />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn submit-btn" OnClick="btnLogin_ClickF" />
                </div>
               
            </div>
        </div>
    </form>
</body>
</html>
