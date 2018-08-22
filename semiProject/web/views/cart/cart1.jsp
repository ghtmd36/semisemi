<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="semi.cart.model.vo.Cart, java.util.ArrayList" %>
<%
	ArrayList<Cart> list = (ArrayList<Cart>)request.getAttribute("list");
	
	//String p_Name = (String)request.getAttribute("p_Name");
	//int p_Price = Integer.parseInt(request.getAttribute("p_Price"));
	
	Cart c1 = new Cart();
	for(Cart c : list){
		c = list.get(0);
		System.out.print(c);
		c1 = c;
	}
%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
       <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        
        <!-- 추가 Css -->
        <meta name="description" content="Sufee Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>공구쓰닷컴</title>
        <style>
	.left-box {
	float: left;
 	width: 60%;
 	 float:left;
	}
	.right-box {
 	float: right;
	width: 40%;
	}
	
	.bottomright {
    position: absolute;
    bottom: 8px;
    right: 16px;
    font-size: 18px;
}
</style>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/fontello.css">
        <link href="/gonggu/views/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="/gonggu/views/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="/gonggu/views/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="/gonggu/views/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/style.css">
        <link rel="stylesheet" href="/gonggu/views/resources/assets/css/responsive.css">
    
    	<!-- 추가 CSS -->
    	<link rel="apple-touch-icon" href="apple-icon.png">
    	<link rel="shortcut icon" href="favicon.ico">

   		<link rel="stylesheet" href="assets/css/normalize.css">
   		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
   		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
    	<link rel="stylesheet" href="assets/css/themify-icons.css">
    	<link rel="stylesheet" href="assets/css/flag-icon.min.css">
    	<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    	<!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    	<link rel="stylesheet" href="assets/scss/style.css">

    	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                           
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-vine"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>             
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="/gonggu/views/resources/assets/img/logo.png" alt=""></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register.html')" data-wow-delay="0.4s">Login</button>
                        <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property.html')" data-wow-delay="0.5s">Submit</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a href="index.html" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home <b class="caret"></b></a>
                            <ul class="dropdown-menu navbar-nav">
                                <li>
                                    <a href="index-2.html">Home Style 2</a>
                                </li>
                                <li>
                                    <a href="index-3.html">Home Style 3</a>
                                </li>
                                <li>
                                    <a href="index-4.html">Home Style 4</a>
                                </li>
                                <li>
                                    <a href="index-5.html">Home Style 5</a>
                                </li>

                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties.html">Properties</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property.html">Property</a></li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h5>Home pages</h5>
                                                <ul>
                                                    <li>
                                                        <a href="index.html">Home Style 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-2.html">Home Style 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-3.html">Home Style 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-4.html">Home Style 4</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-5.html">Home Style 5</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Pages and blog</h5>
                                                <ul>
                                                    <li><a href="blog.html">Blog listing</a>  </li>
                                                    <li><a href="single.html">Blog Post (full)</a>  </li>
                                                    <li><a href="single-right.html">Blog Post (Right)</a>  </li>
                                                    <li><a href="single-left.html">Blog Post (left)</a>  </li>
                                                    <li><a href="contact.html">Contact style (1)</a> </li>
                                                    <li><a href="contact-3.html">Contact style (2)</a> </li>
                                                    <li><a href="contact_3.html">Contact style (3)</a> </li>
                                                    <li><a href="faq.html">FAQ page</a> </li> 
                                                    <li><a href="404.html">404 page</a>  </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property</h5>
                                                <ul>
                                                    <li><a href="property-1.html">Property pages style (1)</a> </li>
                                                    <li><a href="property-2.html">Property pages style (2)</a> </li>
                                                    <li><a href="property-3.html">Property pages style (3)</a> </li>
                                                </ul>

                                                <h5>Properties list</h5>
                                                <ul>
                                                    <li><a href="properties.html">Properties list style (1)</a> </li> 
                                                    <li><a href="properties-2.html">Properties list style (2)</a> </li> 
                                                    <li><a href="properties-3.html">Properties list style (3)</a> </li> 
                                                </ul>                                               
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property process</h5>
                                                <ul> 
                                                    <li><a href="submit-property.html">Submit - step 1</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 2</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 3</a> </li> 
                                                </ul>
                                                <h5>User account</h5>
                                                <ul>
                                                    <li><a href="register.html">Register / login</a>   </li>
                                                    <li><a href="user-properties.html">Your properties</a>  </li>
                                                    <li><a href="submit-property.html">Submit property</a>  </li>
                                                    <li><a href="change-password.html">Change password</a> </li>
                                                    <li><a href="user-profile.html">Your profile</a>  </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.yamm-content -->
                                </li>
                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">장바구니</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->
    

        <script src="/gonggu/views/resources/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="/gonggu/views/resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="/gonggu/views/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="/gonggu/views/resources/assets/js/bootstrap-select.min.js"></script>
        <script src="/gonggu/views/resources/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="/gonggu/views/resources/assets/js/easypiechart.min.js"></script>
        <script src="/gonggu/views/resources/assets/js/jquery.easypiechart.min.js"></script>

        <script src="/gonggu/views/resources/assets/js/owl.carousel.min.js"></script>
        <script src="/gonggu/views/resources/assets/js/wow.js"></script>

        <script src="/gonggu/views/resources/assets/js/icheck.min.js"></script>
        <script src="/gonggu/views/resources/assets/js/price-range.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script src="/gonggu/views/resources/assets/js/gmaps.js"></script>        
        <script src="/gonggu/views/resources/assets/js/gmaps.init.js"></script>

        <script src="/gonggu/views/resources/assets/js/main.js"></script>
        
        <script type="text/javascript" src="/gonggu/views/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"> 
$(function(){ 
	//전체선택 체크박스 클릭 
	$("#allCheck").click(function(){ 

	//만약 전체 선택 체크박스가 체크된상태일경우 
	if($("#allCheck").prop("checked")) { 
		//해당화면에 전체 checkbox들을 체크해준다
		$("input[type=checkbox]").prop("checked",true); 
		// 전체선택 체크박스가 해제된 경우 
		} else { 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			$("input[type=checkbox]").prop("checked",false);
		}
		});
	}); 
	</script>
	<h2>장바구니</h2>
<div class='left-box' style="overflow-y: scroll; height:100%;">
<table border="0" cellspacing="0" width="100%" >
<!-- <input type="button" value="전체선택/삭제"> &nbsp; &nbsp; &nbsp; -->
<input type="button" value="선택물품삭제" style="width: 110px; height: 35px;" class="btn btn-warning"> 

<tr>
<td align="center" style="width: 15px; height: 15px;">
<input type="checkbox" rowspan="2" colspan="0" id="allCheck"><hr>
</td></tr>


<tr>
<td rowspan="3" colspan="2" align="center">
<input type="checkbox">
</td>
<td rowspan="3" colspan="0" width="200">
<img src="/gonggu/views/resources/images/망치.jpg" width="200" height="150" value="<%= c1.getP_Main_Image() %>">
</td>
<td>대여 물품명</td>
<td> 
<input type="text" style="width: 200px; height: 30px; text-align: right;" class="form-control"
			value="<%= c1.getP_Name() %>">
</td></tr>
<tr>
<td>대여 물품가격</td>
<td>
<input type="text" style="width: 200px; height: 30px; text-align: right;" class="form-control"
		value="<%= c1.getP_Price() %>">
</td></tr>
<tr>
<td>대여 가능일</td>
<td>
<input type="text" style="width: 200px; height: 30px; text-align: right;" class="form-control"
		value="<%= c1.getP_State() %>">
</td></tr>
<!-- 두번째 정보 -->
<tr>
<td rowspan="3" colspan="2" align="center">
<input type="checkbox" name="box">
</td>
<td rowspan="3" colspan="0" width="200">
<img src="/gonggu/views/resources/images/카카오.png" width="200" height="150" value="<%= c1.getP_Main_Image() %>">
</td>
<td>대여 물품명</td>
<td> 
<input type="text" style="width: 200px; height: 30px; text-align: right;" class="form-control" 
			value="<%= c1.getP_Name() %>">
</td></tr>
<tr>
<td>대여 물품가격</td>
<td>
<input type="text" style="width: 200px; height: 30px; text-align: right;" class="form-control"
			 value="<%= c1.getP_Price() %>">
</td></tr>
<tr>
<td>대여 가능일</td>
<td>
<input type="text" style="width: 200px; height: 30px; text-align: right;" class="form-control"
			 value="<%= c1.getP_State() %>">
</td></tr>

</table><br>
</div>

<div class="right-box">
<table width="100%" height="100%" border="0" cellspacing="0">
<tr height="100" ><td></td></tr>
<tr><td></td></tr>
<tr><td style="font-size:20px">선택 물품 갯수 : </td><td>
<input type="text" style="width: 220px; height: 30px; text-align: right;" id="aa" class="form-control">
</td></tr>

<tr height="100"><td></td></tr>
<tr><td style="font-size:20px">선택 물품 총 가격 : </td><td>
<input type="text" style="width: 220px; height: 30px; text-align: right;" class="form-control">
</td></tr>
<tr height="300"><td></td></tr>
<tr><td colspan="4"></td></tr>

<!-- <tr>
<td></td>
<td colspan="0" align="center">
	<input type="button" value="결제하기" style="width: 100px; height: 30px;" onclick=""> &nbsp; &nbsp;
	<input type="reset" value="취 소" onclick="location.href='/gonggu/index.jsp'" style="width: 100px; height: 30px; ">
</td></tr> -->
<<tr>
<td colspan="3" align="center">
<!-- <button style="position:absolute; right:0px; bottom:0px;">결제하기</button> -->
<button width="90" height="50" style="width: 150px; height: 40px;" class="btn btn-warning">결제하기</button> &nbsp; &nbsp;
<button style="width: 150px; height: 40px;" onclick="location.href='/gonggu/index.jsp'" class="btn btn-warning">취소</button>
</td>
</tr>
</table>
<br><br>
</div>
	<br><br>
    </body>
</html>