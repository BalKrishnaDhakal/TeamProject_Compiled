<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Balkrishna.aspx.cs" Inherits="Term_Project.Balkrishna" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Bal.css" rel="stylesheet" />
    <div class="bal_Container">
        <div class="row">
            <div class="col-md-12">
                <h5>If you have any questions about our Online Bookstore, we’d love to help.
                     So please get in touch if there’s anything we can help you with. 
                </h5>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <p></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="map" style="width: 100%; height: 500px; margin-bottom: 50px; margin-top: 50px; border: solid; border-color: #ccc"></div>
                <script>
                    function myMap() {
                        var myCenter = new google.maps.LatLng(43.653226, -79.383184);
                        var mapCanvas = document.getElementById("map");
                        var mapOptions = { center: myCenter, zoom: 5 }
                        var map = new google.maps.Map(mapCanvas, mapOptions);
                        var marker = new google.maps.Marker({ position: myCenter });
                        marker.setMap(map);
                        // Zoom to 9 when clicking on marker
                        google.maps.event.addListener(marker, 'click', function () {
                            map.setZoom(9);
                            map.setCenter(marker.getPosition());
                            //   API KEY:  AIzaSyB6l1nN_kOap6v7sZy-ghMJbr45hlV9qzQ
                        });
                    }
                </script>
                <script src="https://maps.googleapis.com/maps/api/js?key= AIzaSyB6l1nN_kOap6v7sZy-ghMJbr45hlV9qzQ&callback=myMap"></script>
            </div>
        </div>
        <div class="row" style="padding-left: 20px">
            <div class="col-md-6 color-17 text-center">
                <h3 class="text-center"><span class="fa fa-rss "></span>Follow us on social media</h3>
                <ul class="faicons">
                    <li class="faspot_1"><a href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin fa-3x"></i></a></li>
                    <li class="faspot_2"><a href="https://en-gb.facebook.com/login/"><i class="fa fa-facebook fa-3x"></i></a></li>
                    <li class="faspot_3"><a href="https://twitter.com/login/"><i class="fa fa-twitter fa-2x"></i></a></li>
                    <li class="faspot_4"><a href="https://accounts.google.com/SignUp?hl=en"><i class="fa fa-google-plus fa-2x"></i></a></li>
                    <li class="faspot_5"><a href="https://www.reddit.com/"><i class="fa fa-reddit fa-2x"></i></a></li>
                    <li class="faspot_6"><a href="https://desktop.github.com/"><i class="fa fa-git fa-2x"></i></a></li>
                </ul>
            </div>
            <div class="col-md-6 color-17">
                <div class="active">
                    <p class="text-center"><span class="glyphicon glyphicon-home "></span>HEAD OFFICE</p>
                    <p class="title">941 Progress Avenue</p>
                    <p>Toronto, Ontario, Canada</p>
                    <p><span class="glyphicon glyphicon-globe"></span>www.onlinebook.ca</p>
                    <p>Toll Free: 1-800-1234-456</p>
                    <p>Telephone: 416-1234-567</p>
                    <p>&nbsp;</p>
                    <p class="text-center"><span class="glyphicon glyphicon-home"></span>USA OFFICE</p>
                    <p class="title">234 Sixth Street</p>
                    <p>Hollister, CA 98765-1234</p>
                    <p><span class="glyphicon glyphicon-globe"></span>www.onlinebook.ca</p>
                    <p>Toll Free: 1-800-9876-543</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <p>&nbsp;</p>
                <div class="col-md-12">
                    <div class="like">
                        <asp:Label ID="completeButton" runat="server" Text="Please, Complete the form below and send us your message"></asp:Label>
                    </div>
                </div>
                <div class="col-md-12">
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
        <div class="row">
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
                    <asp:TextBox ID="form_lastname" runat="server" class="form-control" placeholder="Please enter your lastname " required="required" data-error="Lastname is required." />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <span class="glyphicon glyphicon-envelope"></span>
                    <label for="form_email">
                        Email 
                    </label>
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
                    <label for="form_message">Message </label>
                    <asp:TextBox ID="form_message" runat="server" name="message" class="form-control" placeholder="Message for me " Rows="4" required="required" data-error="Please,leave us a message." BorderStyle="Solid" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-2">
                <asp:Button ID="Button7" class="btn btn-success" type="button" runat="server" Text="Send Message" OnClick="MessageButton_Click" Width="150px" />
            </div>
            <div class="col-md-2">
                <asp:Label class="btn btn-success" runat="server" Text="Choose File" Width="150px">
                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="green" BackColor="Green" Height="0px" Width="150px" /></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Button ID="uploadButton" runat="server" class="btn btn-success" type="button" Text="Upload File" OnClick="uploadButton_Click" UseSubmitBehavior="False" Width="150px" />
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="col-md-3">
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>&nbsp;</p>
            </div>
        </div>
        <div class="row" style="text-align: center">
            <div class="col-md-12">
                <asp:Label ID="MessageLabel" runat="server" BorderStyle="None" Height="70px" Width="960px"
                    Font-Italic="True" TextMode="MultiLine" MaxLength="900" ReadOnly="True" EnableTheming="False"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>&nbsp;</p>
                <div class="col-md-12">
                    <div class="like">
                        <asp:Label ID="likeButton" runat="server" Text="Would you like to contact to our team member"></asp:Label>
                    </div>
                </div>
                <div class="col-md-12">
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4  color-17">
                <div class="card">
                    <img src="Reza.PNG" alt="Reza" class="img-circle" style="height: 150px" />
                    <h3>Prof. S.M.Reza Dibaj</h3>
                    <p class="title">Chief Advisor</p>
                    <p>Online Book Store</p>
                    <div style="margin: 24px 0;">
                        <a href="#"><i class="fa  fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </div>
                    <div class="contactButton">
                        <asp:Button ID="Button1" runat="server" Text="Contact" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Button1_Click" UseSubmitBehavior="False" />
                    </div>
                </div>
            </div>
            <div class="col-md-4 color-17">
                <div class="card">
                    <img src="chandra1.png" alt="chandra" class="img-circle" style="height: 150px" />
                    <h3>Chandra K. Rai</h3>
                    <p class="title">Project Lead</p>
                    <p>Online Book Store</p>
                    <div style="margin: 24px 0;">
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </div>
                    <div class="contactButton">
                        <asp:Button ID="Button2" runat="server" Text="Contact" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Button2_Click" UseSubmitBehavior="False" />
                    </div>
                </div>
            </div>
            <div class="col-md-4 color-17">
                <div class="card">
                    <img src="Narayan.jpg" alt="bal" class="img-circle" style="height: 150px" />
                    <h3>Narayan Guragain</h3>
                    <p class="title">Tech Lead</p>
                    <p>Online Book Store</p>
                    <div style="margin: 24px 0;">
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </div>
                    <div class="contactButton">
                        <asp:Button ID="Button3" runat="server" Text="Contact" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Button3_Click" UseSubmitBehavior="False" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 color-17">
                <div class="card">
                    <img src="bishnu.jpg" alt="bishnu" class="img-circle" style="height: 150px" />
                    <h3>Bishnu Khanal</h3>
                    <p class="title">System Analyst</p>
                    <p>Online Book Store</p>
                    <div style="margin: 24px 0;">
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </div>
                    <div class="contactButton">
                        <asp:Button ID="Button4" runat="server" Text="Contact" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Button4_Click" UseSubmitBehavior="False" />
                    </div>
                </div>
            </div>
            <div class="col-md-4 color-17">
                <div class="card">
                    <img src="Bal.PNG" alt="bal" class="img-circle" style="height: 150px" />
                    <h3>Bal Krishna Dhakal</h3>
                    <p class="title">Subject Matter Expert</p>
                    <p>Online Book Store</p>
                    <div style="margin: 24px 0;">
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </div>
                    <div class="contactButton">
                        <asp:Button ID="Button5" runat="server" Text="Contact" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Button5_Click" UseSubmitBehavior="False" />
                    </div>
                </div>
            </div>
            <div class="col-md-4 color-17">
                <div class="card">
                    <img src="fred.PNG" alt="Fred" class="img-circle" style="height: 150px" />
                    <h3>Frederico de Moraes Galdino</h3>
                    <p class="title">Subject Matter Expert</p>
                    <p>Online Book Store</p>
                    <div style="margin: 24px 0;">
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </div>
                    <div class="contactButton">
                        <asp:Button ID="Button6" runat="server" Text="Contact" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Button6_Click" UseSubmitBehavior="False" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



