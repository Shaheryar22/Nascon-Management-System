<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEventDetails.aspx.cs" Inherits="NASCON_MS.ViewEventDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Faculty Mentor</title>
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
            max-width: 600px; /* Increased width to accommodate the table */
        }
        .background-bar {
            background-color: rgba(139, 69, 19, 0.85);
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            padding: 15px 0;
            text-align: center;
            color: white;
            font-size: 26px;
            font-family: 'Segoe UI', Helvetica, sans-serif;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            box-shadow: 0px 4px 10px rgba(0,0,0,0.25);
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="background-bar">
            <h1>NASCON MANAGEMENT SYSTEM</h1>
        </div>
        <div class="container">
            <h2>Main Faculty Mentor</h2>
            

            <asp:Literal ID="ltlEventTable" runat="server"></asp:Literal> <!-- This will contain the dynamically generated table -->
        </div>
    </form>
</body>
</html>

