<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainParticipant.aspx.cs" Inherits="NASCON_MS.MainParticipant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Participants</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: springgreen;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 400px;
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
        .btn-container {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }
        .btn {
            padding: 10px 20px;
            margin: 10px;
            width: 200px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #008CBA;
            color: white;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #005F78;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="background-bar">
            <h1>NASCON MANAGEMENT SYSTEM</h1>
        </div>
        <div class="container">
            <h2>Main Participants</h2>
            <div class="btn-container">
                <asp:Button ID="btnViewEvents" runat="server" Text="View Events" CssClass="btn" OnClick="btnViewEvents_Click" />
                <asp:Button ID="btnGiveFeedback" runat="server" Text="Give Feedback" CssClass="btn" OnClick="btnGiveFeedback_Click" />
                <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn" OnClick="btnLogout_Click" />
            </div>
        </div>
    </form>
</body>
</html>
