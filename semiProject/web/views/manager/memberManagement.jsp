<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../../adminHeader.jsp" %>
	
	<script type="text/javascript">

	//회원 조회용 변수
	var currentPage;
	var maxPage;
	var startPage;
	var endPage;
	var listCount;
	var pwdList = [];
	var memberInfo = new Object();
	var filter;
	
	$(function(){
		//#table2 사이즈 변경
		//$("#table2 tr").not($("td")).css("width", "100px");

		//#table1 의 모든 필드에 readonly 속성 추가
		$("#table1 input").attr("readonly", true);
		
		//$("#table1 input").attr("readonly", false);
		$("body").append("<td>");
		$("#table1 input").css("font-size", "14px");
		
	}); //document.ready
	
	//전체조회 상태에서 수정 할 경우
	/* function reRoad(){
		paging(page);
	} */

	
	//-------------------------------------------------------------
	
	//등록 | 수정 | 삭제 radio 버튼 checked true 일 경우 버튼 숨기기
	//등록 | 수정 선택시 readonly 설정 제거
	//등록 선택시 필드 값 초기화
	//등록 | 수정 | 삭제 선택시 #form1 의 action 경로 설정
	//등록 radio
	function enrollChecked(){
		$("#enrollBtn").attr("style", "display:inline");
		$("#editBtn").attr("style", "display:none");
		$("#deleteBtn").attr("style", "display:none");
		
		$("#table1 input").attr("readonly", false);
		$("#table1 input").val("");

		return false;
	}
	//수정 radio
	function editChecked(){
		$("#enrollBtn").attr("style", "display:none");
		$("#editBtn").attr("style", "display:inline");
		$("#deleteBtn").attr("style", "display:none");
		
		$("#table1 input").attr("readonly", false);
		$("#mid").attr("readonly", true);
		//$("#form1").attr("action", "/semi/medit");
		return false;
	}
	//삭제 radio
	function deleteChecked(){
		$("#enrollBtn").attr("style", "display:none");
		$("#editBtn").attr("style", "display:none");
		$("#deleteBtn").attr("style", "display:inline");
		
		$("#table1 input").attr("readonly", true);
		
		//$("#form1").attr("action", "/semi/mdelete");
		return false;
	}
	//-------------------------------------------------------------
	
	//회원 등록
	function enrollClick(){
		if(confirm("입력한 정보로 신규 회원을 등록 하시겠습니까?")){
			var birth1 = $("#birth2").val();
			var b1 = birth1.substring(2, 4);
			var birth2 = $("#birth2").val();
			var b2;
			if(birth2 < 10)
				b2 = "0" + birth2;
			else
				b2 = birth2;
			var birth3 = $("#birth3").val();
			var b3;
			if(birth3 < 10)
				b3 = "0" + birth3;
			else
				b3 = birth3;
			memberInfo.mname = $("#mname").val();
			memberInfo.mid = $("#mid").val();
			memberInfo.mnick = $("#mnick").val();
			memberInfo.mpwd = $("#mpwd").val();
			memberInfo.msno = (b1 + b2 + b3);
			if($("#T").is(":checked") == true)
				memberInfo.mgender = "남";
			else
				memberInfo.mgender = "여";
	
			memberInfo.mphone = $("#mphone").val();
			memberInfo.memail = $("#memail").val();
			memberInfo.maddress = $("#maddress").val();
			memberInfo.mpoint = $("#mpoint").val(); 
			
			var jsonStr = JSON.stringify(memberInfo);
			//var json = JSON.parse(jsonStr);
	
			$.ajax({
				url : "/semi/mmenroll",
				type : "post",
				data : {"jsonStr" : jsonStr},
				//dataType : "json",
				success : function(data){
					if(data >= 1)
						alert("회원 등록 완료");
					else
						alert("회원 등록 실패");
					paging(currentPage);
				}, //success
				error : function(jqXHR, textstatus, errorThrown){
					console.log("error : " + jqXHR + ", " + textstatus + ", " + errorThrown);
				} //error
			});//ajax
			paging(1);
		}else{
			alert("회원 등록을 취소합니다.");
		}
		return false;
	} //enrollClick
	
	//회원 수정
	function editClick(memberInfo){
		
		if(confirm("변경된 정보로 정말 수정하시겠습니까?")){
			var birth1 = $("#birth1").val();
			var b1 = birth1.substring(2, 4);
			var birth2 = $("#birth2").val();
			var b2;
			if(birth2 < 10)
				b2 = "0" + birth2;
			else
				b2 = birth2;
			var birth3 = $("#birth3").val();
			var b3;
			if(birth3 < 10)
				b3 = "0" + birth3;
			else
				b3 = birth3;
			memberInfo.mname = $("#mname").val();
			memberInfo.mid = $("#mid").val();
			memberInfo.mnick = $("#mnick").val();
			memberInfo.mpwd = $("#mpwd").val();
			memberInfo.msno = (b1 + b2 + b3);
			
			if($("#T").is(":checked") == true)
				memberInfo.mgender = "남";
			else
				memberInfo.mgender = "여";
	
			memberInfo.mphone = $("#mphone").val();
			memberInfo.memail = $("#memail").val();
			memberInfo.maddress = $("#maddress").val();
			memberInfo.mpoint = $("#mpoint").val(); 
			
			var jsonStr = JSON.stringify(memberInfo);
	
			$.ajax({
				url : "/semi/mmedit",
				type : "post",
				data : {"jsonStr" : jsonStr},
				success : function(data){
					if(data >= 1)
						alert("회원 정보 수정 완료");
					else
						alert("회원 정보 수정 실패");
					paging(currentPage);
				}, //success
				error : function(jqXHR, textstatus, errorThrown){
					console.log("error : " + jqXHR + ", " + textstatus + ", " + errorThrown);
				} //error
				
			});//ajax
		}else{
			alert("변경사항을 저장하지 않고 수정을 취소합니다.");
		}
		paging(currentPage);
		return false;
	}
	
	//회원 삭제
	function deleteClick(memberInfo){
		if(confirm("해당 회원을 정말 삭제하시겠습니까?")){
			var mId = memberInfo.mid;
			$.ajax({
				url : "/semi/mmdelete",
				type : "post",
				data : {"mId" : mId},
				success : function(data){
					if(data >= 1)
						alert("회원 정보 삭제 완료");
					else
						alert(memberInfo.mid + "님의 회원 정보 삭제 실패");
					$("#table1 input").val("");
					paging(currentPage);
					
				}, //success
				error : function(jqXHR, textstatus, errorThrown){
					console.log("error : " + jqXHR + ", " + textstatus + ", " + errorThrown);
				} //error
				
			}); //ajax
		}else{
			alert("회원 삭제를 취소합니다.");
		}
		paging(currentPage);
		return false;
	} //deleteClick
	
	//-------------------------------------------------------------
	
	//회원 선택시 table1 필드에 회원 정보 출력과 memberInfo에 회원 정보 담기
	function radioCheck(num){		
		//select한 회원 정보로 memberInfo 초기화
		memberInfo.mname = $("#nametd" + num).text();
		memberInfo.mid = $("#idtd" + num).text();
		memberInfo.mnick = $("#nicktd" + num).text();
		memberInfo.mpwd = pwdList[num];
		memberInfo.msno = $("#snotd" + num).text();
		memberInfo.mgender = $("#gendertd" + num).text();
		memberInfo.mphone = $("#phonetd" + num).text();
		memberInfo.memail = $("#emailtd" + num).text();
		memberInfo.maddress = $("#addresstd" + num).text();
		memberInfo.mpoint = $("#pointtd" + num).text();

		//table1에 회원 정보 출력
		//$("#mname").val($("#nametd" + num).text());
		$("#mname").val(memberInfo.mname);
		$("#mid").val(memberInfo.mid);
		$("#mnick").val(memberInfo.mnick);
		$("#mpwd").val(memberInfo.mpwd);
		$("#mpwd2").val(memberInfo.mpwd);
		
		var sno = memberInfo.msno;	
		var year = sno.substring(0, 2);
		if(year < 19)
			year = (20 + year);
		
		else
			year = (19 + year);
		
		var month = parseInt(sno.substring(2, 4));
		//if(month > 10)
		//	month = month.substring(1, 2);
		
		var day = parseInt(sno.substring(4, 6));
		//if(day > 10)
		//	day = day.substring(1, 2);
		//alert(year + ", " + month + ", " + day);
		$("#birth1").val(year);
		$("#birth2").val(month);
		$("#birth3").val(day);
			//alert(memberInfo.mgender);
		if(memberInfo.mgender == "남"){
			$("#T").attr("checked", true);
			$("#F").attr("checked", false);
		}else if(memberInfo.mgender == "여"){
			$("#F").attr("checked", true);
			$("#T").attr("checked", false);
		}
		
		$("#mphone").val(memberInfo.mphone);
		$("#memail").val(memberInfo.memail);
		$("#maddress").val(memberInfo.maddress);
		$("#mpoint").val(memberInfo.mpoint);
		
		return false;

	}
	//-------------------------------------------------------------
	
	//회원 리스트 전체 조회
	function paging(page){

		$.ajax({
			url : "/semi/mmlist",
			type : "get",
			data : {"page" : page},
			dataType : "json",
			success : function(data){
				//회원 리스트 직렬화
				var jsonStr = JSON.stringify(data);
				var json = JSON.parse(jsonStr);
				
				//페이지 값 추출
				currentPage = json.currentPage;
				maxPage = json.maxPage;
				startPage = json.startPage;
				endPage = json.endPage;
				listCount = json.listCount;
				jsonListSize = json.list.length;
				jsonPwd = json.list
				
				var values = "";
				for(var i in json.list){
					values += "<tr><td><input type='radio' onclick='radioCheck(" + i + ")' name='choice' id='choice" + i + "'></td>"
					+ "<td id='nametd" + i + "'>" + decodeURIComponent(json.list[i].mname) + "</td>"
					+ "<td id='idtd" + i + "'>" + decodeURIComponent(json.list[i].mid) + "</td>"
					+ "<td id='nicktd" + i + "'>" + decodeURIComponent(json.list[i].mnick) + "</td>"
					+ "<td id='snotd" + i + "'>" + decodeURIComponent(json.list[i].msno) + "</td>"
					+ "<td id='gendertd" + i + "'>" + decodeURIComponent(json.list[i].mgender) + "</td>"
					+ "<td id='phonetd" + i + "'>" + decodeURIComponent(json.list[i].mphone) + "</td>"
					+ "<td id='emailtd" + i + "'>" + decodeURIComponent(json.list[i].memail) + "</td>"
					+ "<td id='addresstd" + i + "'>" + decodeURIComponent(json.list[i].maddress) + "</td>"
					+ "<td id='pointtd" + i + "'>" +  json.list[i].mpoint + "</td></tr>";
					
					pwdList.push(json.list[i].mpwd);
					
				} //for
				$("#t1").html(values); 
				
				//페이징 처리
				for(var p = startPage; p <= endPage; p++){ 
					if(p == currentPage){
						$("#domain").html(domainHtml + "<font color='red' size='4'>[" + p + "]</font>");
					}else{ 
						$("#domain").html(domainHtml + "<a href='#' onclick='paging(" + p + ")'>" + p + "</a>");
					}
					var domainHtml = $("#domain").html();
				}
				
				//맨끝
				$("#finalBtn").attr("onclick", "paging(" + maxPage + ")");
				
			}, //success
				error : function(jqXHR, textstatus, errorThrown){
					console.log("error : " + jqXHR + ", " + textstatus + ", " + errorThrown);
			} //error
		
		}); //ajax

		return false;
	}
	
	//-------------------------------------------------------------
	
	//필터 선택 조회 
	function selectBtnClick(){
			
		filter = $("#filter").val();
		value = $("#searchTF").val();

		$.ajax({
			url : "/semi/mmselect",
			type : "post",
			data : {"filter" : filter, "value" : value},
			dataType : "json",
			success : function(data){
				//회원 리스트 직렬화
				var jsonStr = JSON.stringify(data);
				var json = JSON.parse(jsonStr);
				
				var values = "";
				for(var i in json.list){
					values += "<tr><td><input type='radio' onclick='radioCheck(" + i + ")' name='choice' id='choice" + i + "'></td>"
					+ "<td id='nametd" + i + "'>" + decodeURIComponent(json.list[i].mname) + "</td>"
					+ "<td id='idtd" + i + "'>" + decodeURIComponent(json.list[i].mid) + "</td>"
					+ "<td id='nicktd" + i + "'>" + decodeURIComponent(json.list[i].mnick) + "</td>"
					+ "<td id='snotd" + i + "'>" + decodeURIComponent(json.list[i].msno) + "</td>"
					+ "<td id='gendertd" + i + "'>" + decodeURIComponent(json.list[i].mgender) + "</td>"
					+ "<td id='phonetd" + i + "'>" + decodeURIComponent(json.list[i].mphone) + "</td>"
					+ "<td id='emailtd" + i + "'>" + decodeURIComponent(json.list[i].memail) + "</td>"
					+ "<td id='addresstd" + i + "'>" + decodeURIComponent(json.list[i].maddress) + "</td>"
					+ "<td id='pointtd" + i + "'>" +  json.list[i].mpoint + "</td></tr>";
					
					pwdList.push(json.list[i].mpwd);
				} //for

				$("#t1").html(values); 
				
			}, //success
			error : function(jqXHR, textstatus, errorThrown){
				console.log("error : " + jqXHR + ", " + textstatus + ", " + errorThrown);
			} //error
		}); //ajax
		return false;	
	}

</script>

<body>
        <!-- Left Panel -->

     <aside id="left-panel" class="left-panel" style="background-color:#ffcc00;padding:0px;border:0px;box-sizing:border-box;">
       <div class="navbar navbar-expand-sm nabar-default" style="background-color:#ffcc00;padding:0px;border:0px;box-sizing:border-box;">
        <!-- <nav class="navbar navbar-expand-sm navbar-default" style="background-color:#ffcc00;width:350px;box-sizing:border-box;"> -->  
             <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <!-- <i class="fa fa-bars"></i> -->
                </button>
               <a class="navbar-brand" href="./"><div style="color:black;">관리자 페이지</div></a>
                <!-- <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a> -->
            </div> 
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                    <div style="color:black;">
                        <strong><a href="/semi/memberManagement.jsp">회원관리</a><br>
                        <a href="/semi/rentalManagement.jsp">대여관리</a></strong>
                    </div>
                    </li>  
             
            <div class="col-lg-6">
            <div class="card-body" style="width:380px;hegiht:550px;">
 			<div class="card" id="table1">
                      <div class="card-header">
                        <strong>회원 상세 정보</strong>
                        <div align="right">
                        <input type="radio" id="radio1" name="radioC" onclick="enrollChecked();">등록
						<input type="radio" id="radio2" name="radioC" onclick="editChecked();">수정
						<input type="radio" id="radio3" name="radioC" onclick="deleteChecked();">삭제
						</div>
                      </div>
                      <div class="card-body card-block" style="font-size:14px;">
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
       
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">이름</label></div>
                            <div class="col-12 col-md-9" ><input type="text" id="mname" name="mname" placeholder="이름" class="form-control"></div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">아이디</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="mid" name="mid" placeholder="아이디" class="form-control"><small class="help-block form-text">아이디는 수정이 불가능 합니다.</small></div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">닉네임</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="mnick" name="mnick" placeholder="닉네임" class="form-control"></div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">암호</label></div>
                            <div class="col-12 col-md-9"><input type="password" id="mpwd" name="mpwd" placeholder="Password" class="form-control"><small class="help-block form-text">Please enter a complex password</small></div>
                          </div>                               
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">암호재확인</label></div>
                            <div class="col-12 col-md-9"><input type="password" id="mpwd2" name="mpwd2" placeholder="Password2" class="form-control"><small class="help-block form-text">Please enter a complex password</small></div>
                          </div>      
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">생년월일</label></div>
                            <div class="col-12 col-md-9">
                            <script type="text/javascript">
							//생년월일
							var today = new Date();
							var toyear = parseInt(today.getFullYear());
							var start = toyear;
							var end = toyear - 70;
					
							document.write("<font size=2><select id=birth1 name=birth1>");
							document.write("<option value='' selected>");
							for (i=start;i>=end;i--) document.write("<option>"+i);
							document.write("</select>년  "); 
					
							document.write("<select id=birth2 name=birth2>");
							document.write("<option value='' selected>");
							for (i=1;i<=12;i++) document.write("<option>"+i);
							document.write("</select>월  ");
					
							document.write("<select id=birth3 name=birth3>");
							document.write("<option value='' selected>");
							for (i=1;i<=31;i++) document.write("<option>"+i); 
							document.write("</select>일   </font>");
							</script>
                            </div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">성별</label></div>
                            <div class="col-12 col-md-9">
                            <input type="radio" id="T" name="mgender" value="남">남
							<input type="radio" id="F" name="mgender" value="여">여
                            </div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">전화번호</label></div>
                            <div class="col-12 col-md-9"><input type="phone" id="mphone" name="mphone" placeholder="전화번호" class="form-control"><small class="help-block form-text">'-' 없이 숫자만 입력</small></div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">이메일</label></div>
                            <div class="col-12 col-md-9"><input type="email" id="memail" name="memail" placeholder="Email" class="form-control"><small class="help-block form-text">Please enter your email</small></div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">주소</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="maddress" name="maddress" placeholder="주소" class="form-control"><small class="help-block form-text">Please enter your email</small></div>
                          </div>
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">포인트</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="mpoint" name="mpoint" class="form-control"><small class="help-block form-text">숫자만 입력</small></div>
                          </div>
                          <div align="center">
                      		<button type="button" id="enrollBtn" name="enrollBtn"  onclick="enrollClick();" style="display:none;">저장</button>
							<button type="button" id="editBtn" name="editBtn" onclick="editClick(memberInfo);" style="display:none;">완료</button>
							<button type="button" id="deleteBtn" name="deleteBtn" onclick="deleteClick(memberInfo);" style="display:none;">삭제</button>
							<button type="reset" id="cancleBtn" name="cancleBtn">취소</button>
						  </div>
						 </form>
                      </div>
					</div>
				</div>  
				
				
				            <!-- </div>  -->
            
</div></ul>
            </div>
            </div>
        <!-- </nav> -->
    </aside>  <!-- /#left-panel -->
        <div class="breadcrumbs" > 
             <div class="col-sm-4"> 
                 <div class="page-header float-left">
                    <div class="page-title">
                        <h2 >회원관리</h2>                   
                    </div>                   
                </div> 
             </div> 
        </div>

        <div class="content mt-3" style="width:2000px;height:500px;">
            <div class="animated fadeIn">
                <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                        <select class="btn btn-warning" id="filter" name="filter">
							<option>선택</option>
							<option>이름</option>	
							<option>아이디</option>		
							<option>닉네임</option>	
							<option>전화번호</option>	
						</select>
						<input style="border:3px;" type="search" size="80px" id="searchTF" name="search">
						<button class="btn btn-warning" type="button" id="selecthBtn" name="selecthBtn" onclick="selectBtnClick();">조회</button>
		                <button class="btn btn-warning" type="button" id="listBtn" name="listBtn" onclick="paging(1);">전체조회</button>

                        </div>
                        <div class="card-body">
                            <table class="table" id="table2">
                              <thead>
                            <tr>
								<th width="25">선택</th>
								<th width="100">이름</th>
								<th width="100">아이디</th>
								<th width="100">닉네임</th>
								<th width="100">생년월일</th>
								<th width="100">성별</th>
								<th width="100">전화번호</th>
								<th width="100">이메일</th>
								<th width="100">주소</th>
								<th width="100">포인트</th>
							</tr>
                          </thead>
                          <tbody id="t1">
                           
                      </tbody>
                  </table>

				
                      <!-- 페이징 처리 -->
					<div id="paging1" align="center" style="text-align: center">
					<a id="firstBtn" href="#" onclick="paging(1);">[처음으로]</a>
					<div id="domain" style="text-align: center"></div>
					<a id="finalBtn" href="#" onclick="">[끝으로]</a>
					</div>
                        </div>
                    </div>
                </div>

                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->


<%@ include file="../../footer.jsp"%>