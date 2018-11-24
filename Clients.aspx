<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Clients.aspx.cs" Inherits="Clients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    

    <div class="right_col" role="main" style="height:750px;">
        <div class="">

              <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                    <strong style=" font-size:20px; font-family:'Global Monospace';">Registration Form</strong>
                <%--  <strong>Sign Up</strong><br />
                     <strong style=" color:rgb(153, 204, 50); font-family:     bell gothic std; font-size:20px;"> Registration Form</strong>.
               <%--     <small style="color:darkgoldenrod">Form</small>--%>
                   



    
    <%-- <div class="right_col" role="main">
        <div class="">

          <div class="page-title">
            <div class="title_left">--%>
              
               <%-- <asp:Button ID="Button1" runat="server"  style="  font-family: bell gothic std; " CssClass="btn btn-primary" OnClick="Home_onClick" Text="Back" />--%>
             



         <%--       
            </div>

               
          
              
                  
                  
                <div class="title_right">


              <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <div class="input-group">
                 --%>
                    
                            
                        
                    

<%--                </div>
                  
              </div>
            </div>
          </div>
         

          <script type="text/javascript">
            $(document).ready(function() {
              $('#birthday').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_4"
              }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
              });
            });
          </script>

             <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">--%>
                <%--  <strong>Sign Up</strong><br />
                     <strong style=" color:rgb(153, 204, 50); font-family:     bell gothic std; font-size:20px;"> Registration Form</strong>.
               <%--     <small style="color:darkgoldenrod">Form</small>--%>
                     
                   
                 
                   
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                   <%--   <strong style=" color:rgb(153, 204, 50); font-family:     bell gothic std; font-size:15px;"> Registration Form</strong>.--%>
                </div>
                <div class="x_content">
                   
                
                      
                      
               <%--  <asp:Label ID="Lblcid" runat="server"  Style="font-size:20px;" >Cid:</asp:Label><br />--%>
               <%--  <asp:TextBox ID="Txtboxcid"  runat="server" placeholder="Cid" Style="font-size:18px; height:40px; width:400px;border-radius:4px; padding-left:10px; margin-left:20px; font-family:Calibri;"></asp:TextBox><br /><br />
                      --%>
                    
                      <h5><asp:Label ID="lblCount" runat="server" /></h5>
                      <asp:Label ID="Lblerror" runat="server" Text="" Style="color:red;"></asp:Label><br />
                      <asp:Label ID="Lblsucess" runat="server" Text="" Style="color:green;"></asp:Label><br />
                  
                          <%-- <asp:Label ID="lblcname" runat="server"  Style="font-size:20px;" >CName:</asp:Label><br />--%>
                      <asp:Label ID="Lblname" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px; color:black">Name:</asp:Label>
                 <asp:TextBox ID="Txtboxname"  runat="server" placeholder="Enter Name"  Style="font-size:15px; height:45px; width:500px; border: 2px solid #d6d6d6;     color: black; padding-left:10px; margin-left:100px; font-family:Calibri;" ></asp:TextBox>
                      <asp:RequiredFieldValidator SetFocusOnError="true" ID="rf" ErrorMessage="*"  style="color:red;" ControlToValidate="Txtboxname" ValidationGroup="client"  runat="server" /><br /><br />
                  
                        <asp:Label ID="Lblusername" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px; color:black">Company Name:</asp:Label>
                 <asp:TextBox ID="Txtboxusername"  runat="server" placeholder="Enter Company name"  Style="font-size:15px; height:45px; width:500px; border:2px solid #d6d6d6;     color: black; padding-left:10px; margin-left:25px; font-family:Calibri;" /> <asp:RequiredFieldValidator SetFocusOnError="true" ID="RequiredFieldValidator1" ErrorMessage="*" style="color:red;"  ControlToValidate="Txtboxusername" ValidationGroup="client"  runat="server" /><br /><br />
                   
                           <%--<asp:Label ID="lblcphoneno" runat="server" Style="font-size:20px;" >CPhoneNo:</asp:Label><br />--%>
                       <asp:Label ID="Lblcphoneno" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px; color:black">Phone No:</asp:Label>
                 <asp:TextBox ID="Txtboxphoneno"  runat="server" placeholder="Enter PhoneNo"  Style="font-size:15px; height:45px; width:500px; border:2px solid #d6d6d6;     color: black; padding-left:10px; margin-left:70px; font-family:Calibri;" ></asp:TextBox><asp:RequiredFieldValidator SetFocusOnError="true"  ID="RequiredFieldValidator2" ErrorMessage="*" style="color:red;"  ControlToValidate="Txtboxphoneno" ValidationGroup="client"  runat="server" /><br /><br />

                      
                          <%-- <asp:Label ID="lblcemailid" runat="server"  Style="font-size:20px;" >CEmailid:</asp:Label><br /--%>
                       <asp:Label ID="Lblcemailid" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px; color:black">Email ID:</asp:Label>
                 <asp:TextBox ID="Txtboxcemailid"  runat="server" placeholder="Enter Email Id" TextMode="Email"  Style="font-size:15px; height:45px; width:500px; border:2px solid #d6d6d6; color: black; padding-left:10px; margin-left:80px; font-family:Calibri;" ></asp:TextBox>
                   <%-- <asp:RequiredFieldValidator SetFocusOnError="true"  ID="RequiredFieldValidator3" ErrorMessage="*" style="color:red;"  ControlToValidate="Txtboxcemailid" ValidationGroup="client"  runat="server" />--%><br /><br />
                  
                  <%-- <asp:Label ID="lblcaddress" runat="server"  Style="font-size:20px;">CAddress:</asp:Label><br />--%>
                <asp:Label ID="Lblcaddress" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px; color:black">Address:</asp:Label>
                        <asp:TextBox ID="Txtboxcaddress"  runat="server" placeholder="Enter Address" TextMode="MultiLine"   Style="font-size:15px; height:70px; width:350px; border:2px solid #d6d6d6;     color: black; padding-left:10px; margin-left:80px; font-family:Calibri;" >

                        </asp:TextBox>
                    <asp:RequiredFieldValidator SetFocusOnError="true"  ID="RequiredFieldValidator4" ErrorMessage="*" style="color:red;" ControlToValidate="Txtboxcaddress" ValidationGroup="client"  runat="server" /><br /><br />

                   
                     <%--   <%-- <asp:Label ID="lblLid_fk" runat="server"  Style="font-size:20px;" >Lid_fk:</asp:Label><br />--%>
             <%--  <asp:Label ID="Lbllid_fk" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px;">Lid_FK:</asp:Label><br />
                         <asp:TextBox ID="TxtboxLid_fk"  runat="server" placeholder="Enter Lid_FK"  Style="font-size:15px; height:40px; width:250px;border-radius:4px; padding-left:10px; margin-left:20px; font-family:Calibri;"></asp:TextBox><br /><br />--%>

                
                      <%-- <asp:Label ID="Lblctype" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px;">CType:</asp:Label><br />
                 <asp:TextBox ID="Txtboxctype"  runat="server" placeholder="Enter CType"  Style="font-size:15px; height:40px; width:250px;border-radius:4px; padding-left:10px; margin-left:20px; font-family:Calibri;"></asp:TextBox><br /><br />--%>

                    
                      
                   

                     

                       <asp:Label ID="Lblremarks" runat="server" Text="" Style="font-family:Cambria; font-size:18px; margin-left:20px; color:black">Remarks:</asp:Label>
                 <asp:TextBox ID="Txtboxremarks"  runat="server"  TextMode="MultiLine"  Style="font-size:15px; height:70px; width:350px; border:2px solid #d6d6d6;     color: black; padding-left:10px; margin-left:78px; font-family:Calibri;" ></asp:TextBox><br />
                   <%-- <asp:RequiredFieldValidator SetFocusOnError="true"  ID="RequiredFieldValidator5" ErrorMessage="(*)" style="color:red;"  ControlToValidate="Txtboxremarks" ValidationGroup="client"  runat="server" />--%><br />


                         
                    <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-">
                      
                     <asp:Button ID="Submit" runat="server" ValidationGroup="client"  Text="Submit" class="btn btn-success btn-round" Style="height:40px; width:100px; font-size:20px; margin-left:300px;  border-radius:3px;  color:#fff; font-family:bell gothic std;" OnClick="Submit_Click"  />
                      </div>
                    </div>

                </div>
              </div>
            </div>
          </div>

<%--    <script type="text/javascript">
            $(document).ready(function() {
              $('#birthday').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_4"
              }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
              });
            });
          </script>--%>
    
</asp:Content>

