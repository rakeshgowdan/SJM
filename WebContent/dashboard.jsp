<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.rakesh.model.StudentDetails"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<%
	StudentDetails s = (StudentDetails) request.getAttribute("value");

		%>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
<style type="text/css">

</style>
<script type="text/javascript">
(function ($) {
	  // USE STRICT
	  "use strict";

	  try {// Percent Chart
		    var ctx = document.getElementById("percent-chart");
		    var v1=document.getElementById("attend").value;
		    var v2=100-document.getElementById("attend").value;
		    console.log(v1);
		    if (ctx) {
		      ctx.height = 280;
		      var myChart = new Chart(ctx, {
		        type: 'doughnut',
		        data: {
		          datasets: [
		            {
		              label: "My First dataset",
		              data: [v1,v2 ],
		              backgroundColor: [
		                '#00b5e9',
		                '#fa4251'
		              ],
		              hoverBackgroundColor: [
		                '#00b5e9',
		                '#fa4251'
		              ],
		              borderWidth: [
		                0, 0
		              ],
		              hoverBorderColor: [
		                'transparent',
		                'transparent'
		              ]
		            }
		          ],
		          labels: [
		            'Attended',
		            'UnAttended'
		          ]
		        },
		        options: {
		          maintainAspectRatio: false,
		          responsive: true,
		          cutoutPercentage: 55,
		          animation: {
		            animateScale: true,
		            animateRotate: true
		          },
		          legend: {
		            display: false
		          },
		          tooltips: {
		            titleFontFamily: "Poppins",
		            xPadding: 16,
		            yPadding: 12,
		            caretPadding: 0,
		            bodyFontSize: 13
		          }
		        }
		      });
		    }

		  } catch (error) {
		    console.log(error);
		  }


})(jQuery);
</script>
</head>

<body class="animsition">
    <div class="page-wrapper">
        
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                  <h4>NIIT</h4>  
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fas fa-chart-bar"></i>Learning Plan</a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fas fa-table"></i>Allied services</a>
                        </li>
                        <li>
                            <a href="">
                                <i class="far fa-check-square"></i>Actions</a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fas fa-calendar-alt"></i>Join Session</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                               
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-comment-more"></i>
                                        <span class="quantity">1</span>
                                        <div class="mess-dropdown js-dropdown">
                                            
                                        </div>
                                    </div>
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-email"></i>
                                        <span class="quantity">1</span>
                                        <div class="email-dropdown js-dropdown">
                                         </div>
                                    </div> 
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                           
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="https://i7.pngguru.com/preview/178/419/741/computer-icons-avatar-login-user-avatar.jpg" alt="S2004030001" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#"><%=s.getSid() %></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="https://i7.pngguru.com/preview/178/419/741/computer-icons-avatar-login-user-avatar.jpg" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#"><%=s.getSname() %></a>
                                                    </h5>
                                                    <span class="email"><%=s.getEmail() %></span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="#">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                                
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2><%=s.getAttendencetotal() %> %</h2>
                                                <span>Attendance</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                
                                            </div>
                                            <div class="text">
                                                <h2><%=s.getCourse() %></h2>
                                                <span>Course</span>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            
                                            <div class="text">
                                                <h2><%=s.getStatus() %></h2>
                                                <span>Status</span>
                                            </div>
                                        </div>
            
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            
                                            <div class="text">
                                                <h2><%=s.getCourseEnd() %></h2>
                                                <span>Course Endate</span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                         <div class="col-lg-9">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 m-b-40">Student Journey Trail</h3>
                                        
                                      <div class="map">
                                     
		                                      <ul class="map-ul">
		                                       <c:forEach items="${status}" var="st" >
											    	<li class="map-ul-li"><a class="map-ul-li-a" href=""><c:out value ="${st}"/></a></li>
											</c:forEach>
											</ul>
											
											
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 ">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 m-b-40">Student Journey Analysis</h3>
                                        <canvas id="pieChart"></canvas>
                                    </div>
                                </div>
                            </div>
                           
                            
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="table-responsive table--no-card m-b-30">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Reason</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2019-09-28 </td>
                                                <td>Registred</td>
                                                <td>Joined <%=s.getCourse() %></td>
                                                
                                            </tr>
                                            <tr>
                                                <td>2019-10-13 </td>
                                                <td>Moved to batch b200207</td>
                                                <td>nil</td>
                                                
                                            </tr>
                                            <tr>
                                                <td>2019-11-15 </td>
                                                <td><%=s.getStatus() %></td>
                                                <td>Ongoing with Course <%=s.getCourse() %></td>
                                                
                                            </tr>
                                           <tr>
                                                <td>2020-01-15 </td>
                                                <td>Defaulter</td>
                                                <td>Fee status Pending</td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                            </div>
                            <div class="col-lg-4">
                                <h2 class="title-1 m-b-25">Student stats</h2>
                                <div class="au-card au-card--bg-blue au-card-top-countries m-b-40">
                                    <div class="au-card-inner">
                                        <div class="table-responsive">
                                            <table class="table table-top-countries">
                                                <tbody>
                                                    <tr>
                                                        <td>Registration Number</td>
                                                        <td class="text-right"><%=s.getRegNo() %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Course Status</td>
                                                        <td class="text-right"><%=s.getStatus() %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Carrier Course</td>
                                                        <td class="text-right"><%=s.getCarriercourse() %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Sem/Term</td>
                                                        <td class="text-right"><%=s.getSem() %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Fee status</td>
                                                        <td class="text-right"><%=s.getFeeStatus() %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Faculty </td>
                                                        <td class="text-right">Rakesh</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Batch Timings</td>
                                                        <td class="text-right">15:00-17:00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Course Test Date</td>
                                                        <td class="text-right">31/03/2020</td>
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                               
                            </div>
                            <div class="col-lg-6">
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
