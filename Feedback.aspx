<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="NASCON_MS.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
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
        .container {
            max-width: 600px;
            margin: 250px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input[type="text"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .rating {
            unicode-bidi: bidi-override;
            direction: rtl;
            text-align: center;
        }
        .rating input {
            display: none;
        }
        .rating label {
            display: inline-block;
            padding: 5px;
            font-size: 25px;
            color: #ffa500;
            cursor: pointer;
        }
        .rating label:hover,
        .rating label:hover ~ label,
        .rating input:checked ~ label {
            color: darkgreen;
        }
        .feedback-btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }
        .feedback-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="background-bar">
            <h1>NASCON MANAGEMENT SYSTEM</h1>
        </div>
        <div class="container">
            <h2>Feedback Form</h2>
            <div class="form-group">
                <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPhone" runat="server" Text="Phone No:"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblRating" runat="server" Text="Rating:"></asp:Label>
                <div class="rating">
                    <asp:RadioButton ID="star5" runat="server" GroupName="rating" Text="&#9733;" />
                    <asp:RadioButton ID="star4" runat="server" GroupName="rating" Text="&#9733;" />
                    <asp:RadioButton ID="star3" runat="server" GroupName="rating" Text="&#9733;" />
                    <asp:RadioButton ID="star2" runat="server" GroupName="rating" Text="&#9733;" />
                    <asp:RadioButton ID="star1" runat="server" GroupName="rating" Text="&#9733;" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblFeedback" runat="server" Text="Feedback:"></asp:Label>
                <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Rows="5" MaxLength="255"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" CssClass="feedback-btn" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
