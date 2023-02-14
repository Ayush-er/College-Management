<%@page import="dto.ManagementDTO"%>
<%@page import="dao.ManagementDAO"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty</title>
    <link rel="shortcut icon" href="img/title.png" type="image/x-icon">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="css/nstyle.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style4.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>
<%
    String username=(String)session.getAttribute("username");
    String category=(String)session.getAttribute("category");
    if(username ==null || !(category.equals("faculty")))
    {
        response.sendRedirect("login.jsp");
    }
%>
    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3> faculty <span>PAGE</span></h3>
      </div>
      <div class="right_area">
        <a href="LogOutCheckerServlet" class="logout_btn">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">
        <img src="1.png" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
      </div>
        
        
        
      <div class="mobile_nav_items">
        <a href="facultyHome.jsp"><i class="fas fa-desktop"></i><span>Profile</span></a>
      <div class="show1">
        <a href="facultyUpdateProfile.jsp"><i class="fas fa-cogs" ></i><span>Update Profile&nbsp; &nbsp;</span></a>
      </div>
      <div class="show1">
        <a href="getFacultyStudentId.jsp"><i class="fas fa-cogs" ></i><span>Student Record &nbsp; &nbsp;</span></a>
          
      </div>
      <div class="show1">
        <a href="#"><i class="fas fa-cogs" ></i><span>Complain &nbsp; &nbsp;<i class="fas fa-chevron-down"></i></span></a>
          <div class="hide1">
            <a href="facultyRespond.jsp"><i class="fas fa-th"></i><span>Respond a complain</span></a>
            <a href="facultyComplainHod.jsp"><i class="fas fa-th"></i><span>Complain to HOD</span></a>
          </div>
      </div>
      <div class="show1">
        <a href="facultyDisplayStudent.jsp"><i class="fas fa-cogs" ></i><span>All Student &nbsp; &nbsp;</span></a>
          
      </div>
       <div class="show1">
         <a href="#"><i class="fas fa-cogs" ></i><span>Notice <i class="fas fa-chevron-down"></i></span></a>
       <div class="hide1">
        <a href="facultySendNoticeStudent.jsp"><i class="fas fa-cogs" ></i><span>Student Notice &nbsp; &nbsp;</span></a>
        <a href="facultyCheckNotice.jsp"><i class="fas fa-cogs" ></i><span>Check Notice &nbsp; &nbsp;</span></a>
       </div>
      </div>
      <div class="show1">
        <a href="#"><i class="fas fa-cogs" ></i><span>Assignment <i class="fas fa-chevron-down"></i></span></a>
        <div class="hide1">
         <a href="facultySendAssignment.jsp"><i class="fas fa-cogs" ></i><span>Student Assignment &nbsp; &nbsp;</span></a>
        <a href="facultyrecieveAssignment.jsp"><i class="fas fa-cogs" ></i><span>Check Assignment &nbsp; &nbsp;</span></a>
        </div>
      </div>
      <a href="LogOutCheckerServlet"><i class="fas fa-sliders-h"></i><span>Log Out</span></a>
      </div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
        <img src="1.png" class="profile_image" alt="">
        
      </div>
       <a href="facultyHome.jsp"><i class="fas fa-desktop"></i><span>Profile</span></a>
      <div class="show1">
        <a href="facultyUpdateProfile.jsp"><i class="fas fa-cogs" ></i><span>Update Profile&nbsp; &nbsp;</span></a>
      </div>
      <div class="show1">
        <a href="getFacultyStudentId.jsp"><i class="fas fa-cogs" ></i><span>Student Record &nbsp; &nbsp;</span></a>
          
      </div>
      <div class="show1">
        <a href="#"><i class="fas fa-cogs" ></i><span>Complain &nbsp; &nbsp;<i class="fas fa-chevron-down"></i></span></a>
          <div class="hide1">
            <a href="facultyRespond.jsp"><i class="fas fa-th"></i><span>Respond a complain</span></a>
            <a href="facultyComplainHod.jsp"><i class="fas fa-th"></i><span>Complain to HOD</span></a>
          </div>
      </div>
      <div class="show1">
        <a href="facultyDisplayStudent.jsp"><i class="fas fa-cogs" ></i><span>All Student &nbsp; &nbsp;</span></a>
          
      </div>
      <div class="show1">
         <a href="#"><i class="fas fa-cogs" ></i><span>Notice <i class="fas fa-chevron-down"></i></span></a>
       <div class="hide1">
        <a href="facultySendNoticeStudent.jsp"><i class="fas fa-cogs" ></i><span>Student Notice &nbsp; &nbsp;</span></a>
        <a href="facultyCheckNotice.jsp"><i class="fas fa-cogs" ></i><span>Check Notice &nbsp; &nbsp;</span></a>
       </div>
      </div>
      <div class="show1">
        <a href="#"><i class="fas fa-cogs" ></i><span>Assignment <i class="fas fa-chevron-down"></i></span></a>
        <div class="hide1">
         <a href="facultySendAssignment.jsp"><i class="fas fa-cogs" ></i><span>Student Assignment &nbsp; &nbsp;</span></a>
        <a href="facultyrecieveAssignment.jsp"><i class="fas fa-cogs" ></i><span>Check Assignment &nbsp; &nbsp;</span></a>
        </div>
      </div>
      
      <a href="LogOutCheckerServlet"><i class="fas fa-sliders-h"></i><span>Log Out</span></a>
      </div>
    
    <!--sidebar end-->

    <div class="content">
      <div class="container">
        <div class="main-body">
        
              <!-- Breadcrumb -->
              <nav aria-label="breadcrumb" class="main-breadcrumb">
                <ol class="breadcrumb">
                   <li class="breadcrumb-item"><a href="#">HOME</a></li>
              <li class="breadcrumb-item"><a href="javascript:void(0)">FACULTY</a></li>
              <li class="breadcrumb-item active" aria-current="page">FACULTY PROFILE</li>
            </ol>
              </nav>
              <!-- /Breadcrumb -->
<%
ManagementDAO user=new ManagementDAO();
ManagementDTO dtouser=user.getUserData(username);
%>                  
      
              <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex flex-column align-items-center text-center">
                        <img src="1.png" alt="Admin" class="rounded-circle" width="150">
                        <div class="mt-3">
                          <h4><%=dtouser.getUsername()%></h4>
                          <p class="text-secondary mb-1"><%=dtouser.getDepartment()%> &nbsp;&nbsp;<%=dtouser.getDesignation()%></p>
                          <p class="text-muted font-size-sm"><%=dtouser.getEmail()%></p>
                          <button class="btn btn-primary">Update Profile</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card mt-3">
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                        <span class="text-secondary">https://bootdey.com</span>
                      </li>
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                        <span class="text-secondary">bootdey</span>
                      </li>
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                        <span class="text-secondary">@bootdey</span>
                      </li>
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                        <span class="text-secondary">bootdey</span>
                      </li>
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                        <span class="text-secondary">bootdey</span>
                      </li>
                    </ul>
                  </div>
                </div>

              <div class="col-md-8">
                    <div class="card mb-3"><br>
                    <font color="grey"><h5><b> &nbsp;&nbsp; BASIC DETAILS </b></h5></font>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Name : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getUsername()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Department : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getDepartment()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Designation : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getDesignation()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Gender : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getGender()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Contact :</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getContact()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Email :</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getEmail()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-12">
                          <a class="btn btn-info " href="facultyUpdateProfile.jsp">Edit</a>
                        </div>
                      </div>
                    </div>
                  </div>
                    <div class="card mb-3"><br>
                    <font color="grey"><h5><b> &nbsp;&nbsp; ADDITIONAL DETAILS </b></h5></font>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Joining-Year : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getYear()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Qualification : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getQualification()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Aadhar No. : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getAadhar()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Blood Group : </h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getBlood_group()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Address :</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getAddress()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">DOB :</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          <%=dtouser.getDob()%>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-12">
                          <a class="btn btn-info " href="facultyUpdateProfile.jsp">Edit</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
    
            </div>
        </div>
    </div>

    <script type="text/javascript">
    $(document).ready(function(){
      $('.nav_btn').click(function(){
        $('.mobile_nav_items').toggleClass('active');
      });
    });
    </script>

  </body>
</html>