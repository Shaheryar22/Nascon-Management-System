<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NASCON_MS.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
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
        .welcome-message {
            margin-top: 1000px;
            color: brown;
            font-size: 172px; /* Increased font size */
            font-weight: bold; /* Make text bold */
            text-shadow: 4px 4px 10px rgba(0, 0, 0, 0.2); /* Add shadow for depth */
            margin: 20px 0;
            text-transform: uppercase; /* Optional: uppercase styling */
            background: -webkit-linear-gradient(45deg, black, red); /* Gradient effect */
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
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
        
        .btn {
            padding: 10px 20px;
            margin: 10px;
            width: 300px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #008CBA;
            color: white;
            font-size: 16px;
            transition: background-color 0.3s;
            height:80px;
        }
        .btne {
            padding: 10px 20px;
            margin: 10px;
            width: 300px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #008CBA;
            color: white;
            font-size: 16px;
            transition: background-color 0.3s;
            height:80px;
            margin-left: 180px;
        }
        .btn:hover {
            background-color: #005F78;
        }
        .btne:hover {
            background-color: #005F78;
        }

        .tex{
            align-content:center;
            font-weight:bold;
            font-size:50px;
            margin-left:20px;

        }
    </style>
</head>
<body>
    <div class="background-bar">
        <h1 class="heading">NASCON MANAGEMENT SYSTEM</h1>
    </div>
    <div class="welcome-message">Welcome</div>
    <div>
        <p class="tex">Continue as: </p>
        <button class="btn" onclick="window.location.href='Login.aspx';">Admin</button>
        <button class="btn" onclick="window.location.href='LoginFaculty.aspx';">Faculty Mentors</button>
        <button class="btn" onclick="window.location.href='LoginSponsor.aspx';">Sponsors</button>
        
        <br />
        <button class="btne" onclick="window.location.href='LoginStudent.aspx';">Students (Team)</button>
        <button class="btn" onclick="window.location.href='LoginParticipants.aspx';">Participants</button>
    </div>
</body>
</html>
