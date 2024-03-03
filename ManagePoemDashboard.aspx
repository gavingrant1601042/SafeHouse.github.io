<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePoemDashboard.aspx.cs" Inherits="SafeHouse.ManagePoemDashboard" %>

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
      <style type="text/css">
          .auto-style1 {
              margin-right: 0px;
          }

              .modalBackground  
    {  
        background-color: Black;  
        filter: alpha(opacity=90);  
        opacity: 0.8;  
    }  
      
    .modalPopup  
    {  
        background-color: #FFFFFF;  
        border-width: 3px;  
        border-style: solid;  
        border-color: black;  
        padding-top: 10px;  
        padding-left: 10px;  
        width: 790px;  
        height: 890px;  
    }  


</style>
</head>
<body>
    <form id="form1" runat="server">   
     
<body id="page-top">

        <asp:ScriptManager ID="ScriptManager1" runat="server">  
    </asp:ScriptManager>  
    
    <!-- ModalPopupExtender -->  
    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow" CancelControlID="btnClose" BackgroundCssClass="modalBackground" >  
    </cc1:ModalPopupExtender>  
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style="display:none">  
        <h1><strong>Poem</strong> </h1> 
        <hr />
       Title: <asp:Label ID="lblPoemTitle" runat="server" Text="Label" Visible="false"></asp:Label><br />
       Poem ID:  <asp:Label ID="lblPoemIdSelected" runat="server" Text="Label" Visible="false"></asp:Label><br />
          Poem Description:  <asp:Label ID="lblPoemDescription" runat="server" Text="Label" Visible="false"></asp:Label><br /><br />

                <hr /> <h1>Set Panels</h1>
                <asp:Button ID="btnSetPoem2" runat="server" Text="Set Poem to Panel 2" class="form-control" width="400px" OnClick="UpdatePanel2_Click" /><br />
                 <asp:Button ID="btnSetPoem1" runat="server" Text="Set Poem to Panel 1" class="form-control" width="400px" OnClick="UpdatePanel_Click" /> <br />
         
               
        <hr /> <h1>Clear Panels</h1>
            <asp:Button ID="btnClearPanel1" runat="server" Text="Clear  Panel 1" class="form-control" width="400px" OnClick="ClearPanel1_Click"/> <br />
                 <asp:Button ID="btnClearPanel2" runat="server" Text="Clear Panel 2" class="form-control" width="400px"   OnClick="ClearPanel1_Click"/><br />
         
           <asp:Button ID="btnClearPanelAllPanels" runat="server" Text="Clear All Panels" class="form-control"  width="400px"   OnClick="ClearAllPanel_Click"/><br />

        <asp:Button ID="btnClose" runat="server" Text="Close" class="btn btn-primary" />  
    </asp:Panel>  
    <!-- ModalPopupExtender -->  




        <!-- ModalPopupExtender -->  
    <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="PanelDelete" TargetControlID="btnDelete" CancelControlID="btnClose" BackgroundCssClass="modalBackground" >  
    </cc1:ModalPopupExtender>  
    <asp:Panel ID="PanelDelete" runat="server" CssClass="modalPopup" align="center" style="display:none">  
        <h1><strong>Delete Poem</strong> </h1> 
            <hr />
        <h6><strong>Are you sure you want to delete the Poem Selected</strong> </h6>
    
             Title: <asp:Label ID="lblPoemDeleteTitle" runat="server" Text="Label" Visible="false"></asp:Label><br />
       Poem ID:  <asp:Label ID="lblPoemDeleteIdSelected" runat="server" Text="Label" Visible="false"></asp:Label><br />
          Poem Description:  <asp:Label ID="lblPoemDeleteDescription" runat="server" Text="Label" Visible="false"></asp:Label><br /><br />
            <hr />
         <asp:Button ID="btnDeletOperation" runat="server" Text="Yes" class="btn btn-primary" OnClick="btnDelete_Click"  />

        <asp:Button ID="Button4" runat="server" Text="No" class="btn btn-primary" />  
    </asp:Panel>  
    <!-- ModalPopupExtender -->  
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
    <!--End of Tawk.to Script-->

    <form action="#" class="signin-form">
    <div id="wrapper">

        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#"><span>Safe <br />house</span>
                    <div class="sidebar-brand-icon rotate-n-15"></div>
                    <div class="sidebar-brand-text mx-3"></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link" href="dashboard.aspx"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="changepassword.aspx"><i class="fas fa-user"></i><span>Change Password</span></a></li>
                    <li class="nav-item"><a class="nav-link active" href="EditPoems.aspx"><i class="far fa-file-powerpoint"></i><span>Edit Poems</span></a></li>
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
                                            <div class="me-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 12, 2019</span>
                                                <p>A new monthly report is ready to download!</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="me-3">
                                                <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 7, 2019</span>
                                                <p>$290.29 has been deposited into your account!</p>
                                            </div>
                                        </a><a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="me-3">
                                                <div class="bg-warning icon-circle"><i class="fas fa-exclamation-triangle text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">December 2, 2019</span>
                                                <p>Spending Alert: We've noticed unusually high spending for your account.</p>
                                            </div>
                                        </a><a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
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
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="Dashboard.aspx"><span class="d-none d-lg-inline me-2 text-gray-600 small">
                                    <asp:Label ID="lblUserName" runat="server" Text="UserName Null"></asp:Label></span></a>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in"><a class="dropdown-item" href="Dashboard.aspx"><i class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Profile</a><a class="dropdown-item" href="Dashboard.aspx"><i class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Settings</a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="Login.aspx"><i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark mb-0">Manage Dashboard Poem</h3>
                        
                    </div>
                            
                            <hr />
                    <div class="row">
                        <div class="col-md-6 col-xl-3 mb-4">
                   
                     


  <div class="form-group"> 
      <asp:GridView ID="gridViewDashboardPoem" runat="server" AutoGenerateColumns="False"  AutoPostBack="true" CellPadding="4" GridLines="None" CssClass="auto-style1" OnSelectedIndexChanged="gridViewPoems_SelectedIndexChanged" ForeColor="#333333"  EmptyDataText="No Poem  Found">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="dashboardPoemId" HeaderText="PoemsId" />
                                    <asp:BoundField DataField="dashboardPoemTitle" HeaderText="PoemTitle" />
                                    <asp:BoundField DataField="dashboardPoemDescription" HeaderText="PoemDescription" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
      <h2>Perform Procedures</h2>
    <label for="exampleInputEmail1">PoemTitle</label>
            <asp:TextBox ID="txtboxPoemID" runat="server" class="form-control" placeholder="PoemTitle" Visible="false"></asp:TextBox>
      <asp:TextBox ID="txtPoemTitle" runat="server" class="form-control" placeholder="PoemTitle"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Poem Description</label>

       <asp:TextBox ID="txtPoemDescription" runat="server" class="form-control" placeholder="PoemDescription" TextMode="MultiLine" ></asp:TextBox>

  </div>
<br />
                                <center><h4>Manage Poems</h4></center>
                                       <asp:Button ID="btnSavePoem" runat="server" Text="Save Poem" class="form-control" OnClick="btnSavePoem_Click"  /> <br />
                                         <asp:Button ID="btnDelete" runat="server" Text="Delete Poem" class="form-control"  /><br />
                                          <asp:Button ID="btnShow" runat="server" Text="Set Poem" class="form-control"   /><br />
                                         <asp:Button ID="btnCancel" runat="server" Text="Clear" class="form-control" OnClick="btnCancel_Click"  /><br />
                           
                          
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
        </form>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    </form>
</body>
</html>

