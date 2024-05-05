<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="NASCON_MS.AddStudent" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
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
            margin-top:175px;
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
            width: 400px;
            height: 40px;
            padding: 5px 10px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            padding: 10px 20px;
            width: 50%; /* Slightly less than half to fit side by side due to margins */
            border: none;
            border-radius: 2px;
            cursor: pointer;
            background-color: #008CBA;
            color: white;
            margin-bottom: 20px;
            float: left;
        }
        .btn:hover {
            background-color: #005F78;
        }
        .btn:not(:last-child) {
            margin-right: 0%; /* Space between buttons */
        }
        .submit-btn {
            float: right;
        }
        .signup-text {
            text-align: center;
            margin-top: 20px;
            clear: both; /* Clear floats */
        }
        .log {
            text-align: center;
            font-size: 35px;
            padding-bottom: 20px;
        }

        /* Media queries */
        @media only screen and (max-width: 768px) {
            .container {
                width: 90%; /* Adjust width for smaller screens */
            }
        }
        @media only screen and (max-width: 480px) {
            .container {
                width: 95%; /* Further adjust width for even smaller screens */
            }
            .btn {
                width: 100%; /* Make buttons full width on smaller screens */
            }
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
                <h2 class="log">Add Faculty Mentor</h2>
                <div>
                    <asp:Label runat="server" AssociatedControlID="fullname" Text="Full Name:"></asp:Label>
                    <asp:TextBox ID="fullname" runat="server" CssClass="form-control" placeholder="enter your fullname"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server" AssociatedControlID="email" Text="Email:"></asp:Label>
                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="enter valid email"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server" AssociatedControlID="phone" Text="Phone Number:"></asp:Label>
                    <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="enter your phoneNo"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server" AssociatedControlID="username" Text="Username:"></asp:Label>
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="enter a username"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server" AssociatedControlID="password" Text="Password:"></asp:Label>
                    <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" placeholder="**********"></asp:TextBox>
                </div>
                <div>
                <asp:Label runat="server" AssociatedControlID="password" Text="Event:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="enter your event"></asp:TextBox>
            </div>
                
                
                
                <div style="width: 100%;">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn cancel-btn" OnClientClick="window.location.href='your_cancel_url_here';" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnSubmit" runat="server" Text="Add" CssClass="btn submit-btn" OnClick="btnAdd_Click" />
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>


