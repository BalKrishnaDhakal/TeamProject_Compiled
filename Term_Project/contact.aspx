<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Term_Project.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Bal.css" rel="stylesheet" />
    <div class="bal_Container">
        <div class="col-md-12">
            <h5>If you have any questions about our Online Bookstore, we’d love to help.
                So, Please Complete the form below and send us your message. 
            </h5>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>&nbsp;</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <span class="glyphicon glyphicon-user"></span>
                    <label for="form_name">Firstname </label>
                    <asp:TextBox ID="form_name" runat="server" class="form-control" placeholder="Please enter your firstname " required="required" data-error="Firstname is required." />
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <span class="glyphicon glyphicon-user"></span>
                    <label for="form_lastname">Lastname </label>
                    <asp:TextBox ID="form_lastname" runat="server" class="form-control" placeholder="Please enter your lastname *" required="required" data-error="Lastname is required." />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <span class="glyphicon glyphicon-envelope"></span>
                    <label for="form_email">Email </label>
                    <asp:TextBox ID="form_email" runat="server" type="email" name="email" class="form-control" placeholder="Please enter your email " required="required" data-error="Valid email is required." />
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <span class="glyphicon glyphicon-phone-alt"></span>
                    <label for="form_phone">Phone</label>
                    <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Please enter your phone">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="form_message">Message *</label>
                    <asp:TextBox ID="form_message" runat="server" name="message" class="form-control" placeholder="Message for me " Rows="4" required="required" data-error="Please,leave us a message." BorderStyle="Solid" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <asp:Button ID="submitButton" runat="server" class="btn btn-success btn-send" Text="Send message" OnClick="submitButton_Click" />
            </div>
            <div class="col-md-6">
                <asp:Button ID="BackButton" class="btn btn-success btn-send" runat="server" Text="Back to Previous Page" OnClick="BackButton_Click" UseSubmitBehavior="False" />
            </div>
            <div class="row"></div>
            <div class="col-md-12">
            </div>
            <div class="row">
                <div class="lastMsg">
                    <div class="col-md-12">
                        <asp:TextBox ID="MessageTextBox" runat="server" BorderStyle="None" Font-Size="Larger" Height="70px" Width="960px"
                            Font-Italic="True" TextMode="MultiLine" MaxLength="900" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row"></div>
        </div>
    </div>
</asp:Content>


