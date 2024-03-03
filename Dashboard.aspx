<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SafeHouse.Dashboard" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Safe House Portal</title>
    <link rel="stylesheet" href="assets/bootstrap/css/dashboard.css.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
 
 <script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.all.min.js
"></script>
<link href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.10.0/dist/sweetalert2.min.css
" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
     
<body id="page-top">

    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/6574d72807843602b8001dc8/1hh86gtb5';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
</script>
          <style type="text/css">
          .auto-style1 {
              margin-right: 0px;
          }

              .modalBackground  
    {  
        background-color: Black;  
        filter: alpha(opacity=40);  
        opacity: 0.8;  
    }  
      
    .modalPopup  
    {  
        background-color: white;  
        border-width: 3px;  
        border-style: solid;  
        border-color: black;  
        padding-top: 10px;  
        padding-left: 10px;  
        width: 290px;  
        height: 290px;  
    }  



     .fileUpload  
    {  
        background-color: white;  
        border-width: 3px;  
        border-style: solid;  
        border-color: black;  
        padding-top: 10px;  
        padding-left: 10px;  
        width: 490px;  
        height: 490px;  
    }  

</style>
    <!--End of Tawk.to Script-->
    <asp:ScriptManager ID="ScriptManager1" runat="server">  
    </asp:ScriptManager>  
       <!-- ModalPopupExtender -->  
    <cc1:ModalPopupExtender ID="mp2" runat="server" PopupControlID="Panel1" TargetControlID="btnShow" CancelControlID="btnClose" BackgroundCssClass="modalBackground" >  
    </cc1:ModalPopupExtender>  
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style="display:none">  
        <h3><strong>Are you sure you want to cancel your subscription?</strong> </h3> 
        <hr />
      

          <asp:Button ID="btnCancelSubscription" runat="server" Text="Yes" class="btn btn-warning" Width="100px" OnClick="btnCancelSubscription_Click"/> 
        <asp:Button ID="btnClose" runat="server" Text="No" class="btn btn-primary" Width="100px"/> 
        <hr />
    </asp:Panel>  




           <!-- Upload Image -->  
     <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="PanelDelete" TargetControlID="btnUploadImage" CancelControlID="btnClose" BackgroundCssClass="modalBackground" >  
    </cc1:ModalPopupExtender>  
    <asp:Panel ID="PanelDelete" runat="server" CssClass="fileUpload" align="center" style="display:none">  
        <h1><strong>Background Image Management</strong> </h1> 
            <hr />
        <h6><strong>Please Select Image you want to upload </strong> </h6>

        <asp:FileUpload ID="FileUpload1" runat="server" />
        <hr />
     
        

        <h2> Set File Background of File</h2>
        
     <asp:GridView ID="grdViewFiles" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"  OnSelectedIndexChanged="grdViewFiles_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
           
        <hr />

            <asp:Button ID="btnUpload" runat="server" Text="Upload" class="btn btn-primary" OnClick="btnUpload_Click"/> 
            <asp:Button ID="btnSetBackground" runat="server" Text="Set Background" class="btn btn-primary"  OnClick="btnSet_Click"/>  
        <asp:Button ID="btnCancelFileUpload" runat="server" Text="Cancel" class="btn btn-primary"  />  
        <hr />
    </asp:Panel>  







    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#"><span>Safe <br />house</span>
                    <div class="sidebar-brand-icon rotate-n-15"></div>
                    <div class="sidebar-brand-text mx-3"></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link active" href="dashboard.aspx"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="changepassword.aspx"><i class="fas fa-user"></i><span>Change Password</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="EditPoems.aspx"><i class="far fa-file-powerpoint"></i><span>Edit Poems</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="login.aspx"><i class="fas fa-long-arrow-alt-left" style="font-size: 14px;"></i>Logout</a></li
                </ul>
                <div class="text-center d-none d-md-inline"></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"></div>
                        </form>
                        <ul class="navbar-nav flex-nowrap ms-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-end p-3 animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="me-auto navbar-search w-100">
                                        <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"></a>
                                    <div class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                        <h6 class="dropdown-header">alerts center</h6><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar4.jpeg">
                                                <div class="bg-success status-indicator"></div>
                                            </div>
                                            <div class="fw-bold">
                                                <div class="text-truncate"><span>Hi there! I am wondering if you can help me with a problem I've been having.</span></div>
                                                <p class="small text-gray-500 mb-0">Emily Fowler - 58m</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar2.jpeg">
                                                <div class="status-indicator"></div>
                                            </div>
                                            <div class="fw-bold">
                                                <div class="text-truncate"><span>I have the photos that you ordered last month!</span></div>
                                                <p class="small text-gray-500 mb-0">Jae Chun - 1d</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar3.jpeg">
                                                <div class="bg-warning status-indicator"></div>
                                            </div>
                                            <div class="fw-bold">
                                                <div class="text-truncate"><span>Last month's report looks great, I am very happy with the progress so far, keep up the good work!</span></div>
                                                <p class="small text-gray-500 mb-0">Morgan Alvarez - 2d</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar5.jpeg">
                                                <div class="bg-success status-indicator"></div>
                                            </div>
                                            <div class="fw-bold">
                                                <div class="text-truncate"><span>Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</span></div>
                                                <p class="small text-gray-500 mb-0">Chicken the Dog · 2w</p>
                                            </div>
                                        </a><a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
                                </div>
                                <div class="shadow dropdown-list dropdown-menu dropdown-menu-end" aria-labelledby="alertsDropdown"></div>
                            </li>
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><span class="d-none d-lg-inline me-2 text-gray-600 small">
                                    <asp:Label ID="lblUserName" runat="server" Text="UserName Null"></asp:Label></span></a>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in"><a class="dropdown-item" href="Dashboard.aspx"><i class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Profile</a><a class="dropdown-item" href="#"><i class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Settings</a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="Login.aspx"><i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Dashboard</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-primary py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span>Setup Zoom Meeting</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span>  <asp:Label ID="lblZoomLink" runat="server" Text="Pay Subscription To Recieve a Zoom Link for a one on one session"></asp:Label></span></div>
                                        </div>
                               
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-success py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-success fw-bold text-xs mb-1"><span>Pay Subscription</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span> 
                                                <asp:Button ID="Button1" runat="server" Text="Pay for Subsciption" class="btn btn-primary"/></span></div>
                                          
                                        </div>
                                  
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-info py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-info fw-bold text-xs mb-1"><span>Total Clients Pending For Consultation</span></div>
                                            <div class="row g-0 align-items-center">
                                                <div class="col-auto">
                                                    <div class="text-dark fw-bold h5 mb-0 me-3"><span>
                                                        <asp:Label ID="lblTotalClientAmt" runat="server" Text="Pending Waiting List"></asp:Label></span></div>
                                                </div>
                                            </div>
                                        </div>
                             
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4">
                            <div class="card shadow border-start-warning py-2">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-warning fw-bold text-xs mb-1"><span>Cancel Subscription</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span><asp:Button ID="btnShow" runat="server" Text="Cancel Subsciption" class="btn btn-primary"/>  <br />  <hr /> <h5>Manage Photo</h5> <asp:Button ID="btnUploadImage" runat="server" Text="Upload Image" class="btn btn-primary"/></span></div>
                                        </div>
                          
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <asp:TextBox ID="txtFileName" runat="server" Visible="false" ></asp:TextBox>
                    <div class="row">
                        <div class="col-lg-7 col-xl-8">
                            <div class="card shadow mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0">
                                        <asp:Label ID="lblPoemTitle1" runat="server" Text="No Poem Set"></asp:Label></h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">

                                        <asp:Label ID="lblPoemDescription1" runat="server" Text=""></asp:Label>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-xl-4">
                            <div class="card shadow mb-4" style="left: -1px; top: 0px">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0"> <asp:Label ID="lblPoemTitle2" runat="server" Text="Label"></asp:Label></h6>
                              
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <asp:Label ID="lblPoemDescription2" runat="server" Text=""></asp:Label></div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                                 <div class="col-lg-5 col-xl-11">
                            <div class="card shadow mb-4" style="left: -1px; top: 0px">
                   <b><h2>Privacy Disclaimer:</h2>  </b>
<p>
Dear <asp:Label ID="lblUser" runat="server" Text="Error Please Sign in" Font-Bold="True"></asp:Label>,

We value and respect your privacy, and we want to assure you that your trust is of utmost importance to us. This disclaimer is intended to inform you of our commitment to safeguarding your personal information and ensuring your anonymity.

    <br />
    <br />
<b>Confidentiality Assurance:</b>
We want to emphasize that any information you provide to us will be treated with the highest level of confidentiality. We do not share, sell, or disclose your personal details to any third parties without your explicit consent.
    
    <br />
    <br />
<b>Anonymous Participation:</b>
Your participation in our services is conducted with the utmost respect for your anonymity. We do not collect personally identifiable information without your knowledge, and you have the option to remain anonymous during your interactions with our platform.
    
    <br />
    <br />
<b>Secure Data Handling:</b>
Our systems are equipped with robust security measures to protect your data from unauthorized access, ensuring that your personal information remains secure throughout your engagement with our services.
    
    <br />
    <br />
<b>Compliance with Regulations:</b>
We adhere strictly to relevant data protection laws and regulations. Your rights and privacy are safeguarded in accordance with the applicable legal frameworks, and we are committed to maintaining compliance with industry standards.
    
    <br />
    <br />
<b>Opt-out and Control:</b>
You have the right to opt-out of any data collection processes or withdraw your consent at any time. We provide you with the tools and mechanisms necessary to control the information you share with us.
    
    <br />
    <br />
By continuing to use our services,  you acknowledge that you have read and understood this privacy disclaimer. If you have any concerns or questions about our privacy practices, please feel free to contact us
    <br />
    <br />
    Thank you for choosing Safe House
    </p>
                        </div>
                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Safe House 2023</span></div>
                </div>
            </footer>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    </form>
</body>
</html>
