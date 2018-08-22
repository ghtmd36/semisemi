<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "semi.products.model.vo.Product, java.util.*" %>
<%
String mid = (String)session.getAttribute("m_id");
String aNo = (String)session.getAttribute("a_No");
String keyword = (String)request.getAttribute("keyword");

%>
<script type="text/javascript">
	function move(){
		location.href="/semi/plist"
	};
</script>

	<%@ include file = "header.jsp" %>
	
	<%@ include file="aside2.jsp" %>

        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="/semi/resources/images/main/01_1.jpg" alt="GTA V"></div>
                    <div class="item"><img src="/semi/resources/images/main/01_2.jpg" alt="The Last of us"></div>
                    <div class="item"><img src="/semi/resources/images/main/02_1.jpg" alt="GTA V"></div>

                </div>
            </div>
             <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>property Searching Just Got So Easy</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam velit adipisci quibusdam aliquam teneturo!</p>
                        <div class="search-form wow pulse" data-wow-delay="0.8s">
						
                            <form action="/semi/psearch" class=" form-inline" method="post"> 

                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="false" data-live-search-style="begins" title="지역">

                                        <option value="종로구">종로구</option>
                                        <option value="중구">중구</option>
                                        <option value="용산구">용산구</option>
                                        <option value="성동구">성동구</option>
                                        <option value="광진구">광진구</option>
                                        <option value="동대문구">동대문구</option>
                                        <option value="중랑구">중랑구</option>
                                        <option value="성북구">성북구</option>
                                        <option value="강북구">강북구</option>
                                        <option value="도봉구">도봉구</option>
                                        <option value="노원구">노원구</option>
                                        <option value="은평구">은평구</option>
                                        <option value="서대문구">서대문구</option>
                                        <option value="마포구">마포구</option>
                                        <option value="양천구">양천구</option>
                                        <option value="강서구">강서구</option>
                                        <option value="구로구">구로구</option>
                                        <option value="금천구">금천구</option>
                                        <option value="영등포구">영등포구</option>
                                        <option value="동작구">동작구</option>
                                        <option value="관악구">관악구</option>
                                        <option value="서초구">서초구</option>
                                        <option value="강남구">강남구</option>
                                        <option value="송파구">송파구</option>
                                        <option value="강동구">강동구</option>

                                    </select>
                                </div>
                                <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control">
                                        <option>분류</option>
                                        <option>절단공구 </option>
                                        <option>드릴공구</option>
                                        <option>충전공구</option>  
                                        <option>기타공구</option>
                                        <option>기타생활용품</option>    
                                        

                                    </select>
                                </div>
                                 <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Key word" name="keyword" id="keyword">
                                </div>
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       <!-- property area -->
        <div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row" style="text-align : center;">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>제품소개</h2>
                        <p>product description</p>
                    </div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="/semi/pdetail.bd" ><img src="/semi/resources/images/monkeyspanner.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >몽키스패너</a></h5> 
                                    <div class="dot-hr"></div>
                                 
                                    <span class="proerty-price pull-right"> 2000원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/property-3.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-4.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>


                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/property-4.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>
                        
                        

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-tree more-proerty text-center">
                                <div class="item-tree-icon">
                                    <i class="fa fa-th"></i>
                                </div>
                                <div class="more-entry overflow">
                                    <h5><a href="/semi/plist" >CAN'T DECIDE ? </a></h5>
                                    <h5 class="tree-sub-ttl">Show all properties</h5>
                                    <button class="btn border-btn more-black" value="All properties" onclick="move();">제품 전체보기</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                
              
        

       <%@ include file = "footer.jsp" %>
  