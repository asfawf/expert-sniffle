<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
    <body>
        <%@ include file="/WEB-INF/views/module/header.jsp" %>
    <section>       
         
        <!-- Body content -->
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">${detail.proName }</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40">
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    
                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property1.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property1.jpg" />
                                        </li>
                                        <%-- <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property2.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property2.jpg" />
                                        </li>
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg" />
                                        </li>
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property4.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property4.jpg" />
                                        </li>    --%>                                      
                                    </ul>
                                </div>
                            </div>
                        </div>

                       <!--   <div class="single-property-wrapper">-->
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${detail.proName }</h1>
                                <span class="property-price pull-right">${detail.proPrice}</span>
                            </div>

                            
                            <div class="section">
                                <h4 class="s-property-title">공간소개</h4>
                                <div class="s-property-content">
                                    <p>${detail.proPost }</p>
                                </div>
                            </div>
                            <!-- End introduce area  -->

                            <div class="section additional-details">

                                <h4 class="s-property-title">시설안내</h4>

                                <ul class="additional-details-list clearfix">
                                
                                ${detail.proInfo }
<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">영업시간</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">0~24시</span> -->
<!--                                     </li> -->

<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">층</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">지상8층</span> -->
<!--                                     </li> -->
<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주차</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">불가능</span> -->
<!--                                     </li> -->

<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">엘리베이터</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">없음</span> -->
<!--                                     </li> -->
                                </ul>
                            </div>  
                            <!-- End additional-details area  -->

                            <div class="section property-features">      

                                <h4 class="s-property-title">유의사항</h4>   
                                ${detail.proNotice }                         
<!--                                 <ul> -->
<!--                                     <li><a>잔여시간 환불 불가</a></li><br>    -->
<!--                                     <li><a>소품 파손시 신품가격 변상</a></li><br> -->
<!--                                     <li><a>퇴실시 기본적인 청소 및 소품 원위치</a></li><br> -->
<!--                                     <li><a>고객님의 안전과 보안을 위하여 CCTV설치</a></li><br> -->
<!--                                     <li><a>5분전퇴실</a></li><br> -->
<!--                                     <li><a>작업실내 달리기/고함지르기 소음행위 금지</a></li> -->
<!--                                 </ul> -->

                            </div>
                            <!-- End 유의사항 area  -->



                            <div class="section property-features">      

                                <h4 class="s-property-title">환불규정</h4>       
                                ${detail.proRefund }                     
<!--                                 <ul> -->
<!--                                     <li><a>이용 6일전 : 총 금액의 100% 환불</a></li><br>    -->
<!--                                     <li><a>이용 5일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 4일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 3일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 2일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 1일전 : 환불 불가</a></li> -->
<!--                                 </ul> -->

                            </div>
                            <!-- End 환불 규정 area  -->




                            <div class="section property-features">      

                                <h4 class="s-property-title">위치</h4>                            
                               <!-- 지도 api -->
                            <div id="map" style="width:100%;height:350px;"></div>

							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=050dabb6b9a1019a9050e1301f2edd4c"></script>
							<script>
							var mapContainer = document.getElementById('map'), 
							    mapOption = { 
							        center: new kakao.maps.LatLng(37.50055486252025, 127.02501560915026), 
							        level: 3
							    };
							
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							var markerPosition  = new kakao.maps.LatLng(37.50055486252025, 127.02501560915026); 
							
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});
							
							marker.setMap(map);    
							</script>

                            </div>                      
                            


                            <!-- 지도 안내 -->

                            <div class="section property-share"> 
                                <h4 class="s-property-title">Q&A
                                <sec:authorize var="isauth" access="isAuthenticated()">
								<sec:authorize var="" access="hasRole('USER')">
									<!-- Q&A 등록 버튼 시작 -->
									<button id="notibtn" type="button" class="btn search-btn pull-right" data-toggle="modal" data-target="#insertQna" style="display: inline;">
										등록
									</button>									
									<!-- Q&A 등록 Modal -->
									<div class="modal fade" id="insertQna" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">									
											  	<div class="modal-header">
												    <h4 class="modal-title text-center" id="exampleModalLabel">
												    Q&A 등록
												    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
												    </h4>										    
												</div>							
												<form:form id="frminsertQna">
												<div class="modal-body">													
													<div class="mb-3">
														<br>
														<textarea class="form-control" name="memQuestion" placeholder="내용" style="height: 300px;"></textarea>
														<input type="hidden" class="form-control" name="proNum" value="${detail.proNum }">
														<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}"><br>														
													</div>
												</div>
												</form:form>
											    <div class="modal-footer">
													<div class="button notice-btn">
												        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
														<button form="frminsertQna" type="button" class="btn search-btn btninsertQna" data-dismiss="modal">등록</button>												
													</div> 
												</div>										
											</div>
										</div>
									</div>
									<!-- 공지사항 등록 버튼 끝 -->
								</sec:authorize>			
								</sec:authorize>
								</h4>
								<!-- qnaList 시작 -->
                                <section id="comments" class="comments"> 
                                           
                                    <div class="row comment" id="qList">
                                        <c:forEach items="${qnaList }" var="qna"> 
                                        <div class="col-sm col-md-10" id="${qna.qnaNum}">
                                            <h5 class="text-uppercase">${qna.memId }</h5>
                                            <p class="posted"> ${qna.qnaDate }</p>
                                            <p>${qna.memQuestion }</p>
                                            <p class="reply"><i class="fa fa-hand-o-right"></i>
                                            	<c:if test="${qna.hostAnswer != null}">${qna.hostAnswer}</c:if>
                                            </p>
                                            <p class="pull-right">
                                            <c:if test="${detail.memId == pageContext.request.userPrincipal.name}">
                                            	<button data-toggle="modal" data-target="#replyQna${qna.qnaNum}" type="button">답변</button>
                                            </c:if>
	                                        <c:if test="${qna.memId == pageContext.request.userPrincipal.name}">
		                                        <button data-toggle="modal" data-target="#updateQna${qna.qnaNum}" type="button">수정</button>
												<button class="delete btndeleteQna" type="button" data-qnanum="${qna.qnaNum}">삭제</button>
	                                        </c:if>
	                                        </p>
                                        </div>                                        
                                        <!-- updateQna modal -->
										<div class="modal" id="updateQna${qna.qnaNum}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">									
												  	<div class="modal-header">
													    <h4 class="modal-title text-center" id="exampleModalLabel">
													    Q&A 수정
													    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
													    </h4>										    
													</div>							
													<form id="frmupdateQna${qna.qnaNum}">
													<div class="modal-body">													
														<div class="mb-3">
															<br>
															<textarea class="form-control memQuestion" name="memQuestion" placeholder="내용" style="height: 300px;">${qna.memQuestion }</textarea>
														</div>
													</div>
												    <div class="modal-footer">
														<div class="button notice-btn">
													        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
															<button form="frmupdateQna${qna.qnaNum}" type="button" class="update btnupdateQna" data-dismiss="modal" data-qnanum="${qna.qnaNum}">등록</button>												
														</div> 
													</div>										
													</form>
												</div>
											</div>
										</div>
										<!-- replyQna modal -->
										<div class="modal" id="replyQna${qna.qnaNum}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">									
												  	<div class="modal-header">
													    <h4 class="modal-title text-center" id="exampleModalLabel">
													    Q&A 답변
													    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
													    </h4>										    
													</div>							
													<form id="frmreplyQna${qna.qnaNum}">
													<div class="modal-body">													
														<div class="mb-3">
															<br>
															<textarea class="form-control hostAnswer" name="hostAnswer" placeholder="내용" style="height: 300px;"></textarea>
														</div>
													</div>
												    <div class="modal-footer">
														<div class="button notice-btn">
													        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
															<button form="frmreplyQna${qna.qnaNum}" type="button" class="reply btnreplyQna" data-dismiss="modal" data-pronum="${qna.proNum}" data-qnanum="${qna.qnaNum}">등록</button>												
														</div> 
													</div>										
													</form>
												</div>
											</div>
										</div>                                            
                                        </c:forEach>
                                        <!-- qna 페이징 -->
                                        <%-- <c:if test="${!empty qna.qnaNum }"> --%>
                                        <div class="col-md-12 clear"> 
					                        <div class="text-center">
					                            <div class="pagination">
					                                <ul class="pagination-sm">
					                                	<c:choose>
						                               	<c:when test="${pageInfo.currentPage eq 1 }">
						                               		<li><a class="disabled pe-7s-angle-left"></a></li>
						                               	</c:when>
						                               	<c:otherwise>
						                                    <li><a class="pe-7s-angle-left" href="${pageContext.request.contextPath}/product/detail?proNum=${param.proNum }&qnapage=${pageInfo.currentPage - 1 }"></a></li>
						                               	</c:otherwise>
					                                	</c:choose>
						                                <c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
															<li><a href="${pageContext.request.contextPath}/product/detail?proNum=${param.proNum }&qnapage=${page }">${page }</a></li>
														</c:forEach>  
														<c:choose>
														<c:when test="${pageInfo.currentPage eq pageInfo.endPage}">
						                               		<li><a class="disabled pe-7s-angle-right"></a></li>
						                               	</c:when>
						                               	<c:otherwise>
						                                    <li><a class="pe-7s-angle-right" href="${pageContext.request.contextPath}/product/detail?proNum=${param.proNum }&qnapage=${pageInfo.currentPage +1 }"></a></li>
						                               	</c:otherwise> 
						                               	</c:choose>                                 
					                                </ul>
					                            </div>
					                        </div>                
					                    </div>
					                    <%-- </c:if> --%>
                                    </div>
                                    <!-- /.comment -->
        
        
                                    <!-- <div class="row comment last">
        
                                        <div class="col-sm-9 col-md-10">
                                            <h5 class="text-uppercase">Louise Armero</h5>
                                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                                Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                            <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                            </p>
                                        </div>
        
                                    </div> -->
                                    <!-- /.comment -->
                                </section>
                            </div>
                            <!-- End qna area  -->
                           
                            <!-- start review area -->
                            <div class="section property-share"> 
                                <h4 class="s-property-title">review</h4> 
                                <div class="client-text">                                
                                    <p>접근성이 좋고 공간에 들어섰을때 아늑한 분위기가 너무 좋았습니다.</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>깔끔하고 무료로 마실수 있어서 좋았어요 또 이용할 생각입니다</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>넘 좋았어요 음료 1개 주는게 좋네요 다음에도 이용할게요</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                            
                            </div>


                            <!-- End review area -->

                            
                      <!--   </div> -->
                       </div>


                    <!-- 사이드바 구역 -->

                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/client-face1.png" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">Nathan James</a>
                                                    <span>Real Estate Agent</span>        
                                                </h3>
                                                <div class="dealer-social-media">
                                                    <a class="twitter" target="_blank" href="">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                    <a class="facebook" target="_blank" href="">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                    <a class="gplus" target="_blank" href="">
                                                        <i class="fa fa-google-plus"></i>
                                                    </a>
                                                    <a class="linkedin" target="_blank" href="">
                                                        <i class="fa fa-linkedin"></i>
                                                    </a> 
                                                    <a class="instagram" target="_blank" href="">
                                                        <i class="fa fa-instagram"></i>
                                                    </a>       
                                                </div>

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                                <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                            </ul>
                                            <p>Duis mollis  blandit tempus porttitor curabiturDuis mollis  blandit tempus porttitor curabitur , est non…</p>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Similar Properties</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-1.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-3.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>                          

                            <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Ads her  </h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/ads.jpg">
                                </div>
                            </div>

                            

                        </aside>
                    </div>
                </div>

            </div>
        </div>
        

        <script>
	        $(document).ready(function () {
	
	            $('#image-gallery').lightSlider({
	                gallery: true,
	                item: 1,
	                thumbItem: 9,
	                slideMargin: 0,
	                speed: 500,
	                auto: true,
	                loop: true,
	                onSliderLoad: function () {
	                    $('#image-gallery').removeClass('cS-hidden');
	                }
	            });
	        });

	       /* frminsertQna ajax */
           $(".btninsertQna").on("click", insertQna);
          	function insertQna() {
          		var memQuestionLength = $("[name=memQuestion]").val().trim().length;
          		if(memQuestionLength < 1) {
          			alert("글자 수가 적으면 등록되지 않습니다. 글을 입력해주세요.")
          			$("[name=memQuestion]").focus()
          			$("[name=memQuestion]").val("")
          			return false;
          		}
          		
          		$.ajax({   
          			  url: "${pageContext.request.contextPath}/product/detail/qnainsert"
           		    , type: "POST"
          			, data: {memQuestion: $("[name=memQuestion]").val(), proNum:$("[name=proNum]").val(), memId:$("[name=memId]").val()}
          			, dataType: "json"  
          			, success: function (result) { 
          				console.log(result);
          				frminsertQna.reset();
           				if(result.length > 0) { 
           					alert("QNA가 작성되었습니다.")
           				} else {
           					alert("QNA가 작성되지 않았습니다. 다시 작성해주세요.")
           				}           				 
           				displayQna(result);
           			}
         		   , error : function(request,status,error) {
        			   alert("code:" + request.status + "\n" + "message:" +
        					 request.responseText + "\n" + "error:" + error); 
        			}
        		   , beforeSend : function(xhr){
                      xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
        			}
           		});
           	}
           	
          	/* displayQna 화면 함수 */
           	function displayQna(result) {
           		
           		var htmlVal = '';
           		for(var i = 0; i < result.length; i++){
           			var qna = result[i];
           			htmlVal += '<div class="col-sm col-md-10" id="'+qna.qnaNum+'">';
           			htmlVal += '<h5 class="text-uppercase">'+qna.memId+'</h5>';
           			htmlVal += '<p class="posted">'+qna.qnaDate+'</p>';
          			htmlVal += '<p>'+qna.memQuestion+'</p>';
          			htmlVal += '<p class="reply"><i class="fa fa-hand-o-right"></i>';
          			if(qna.hostAnswer != null){
       				htmlVal += qna.hostAnswer
       					}
          			htmlVal += '</p>';
          			htmlVal += '<p class="pull-right">';
          			if('${detail.memId}' == '${pageContext.request.userPrincipal.name}'){
          			htmlVal += '<button data-toggle="modal" data-target="#replyQna'+qna.qnaNum+'" type="button">답변</button>';
          			}
          			if(qna.memId == '${pageContext.request.userPrincipal.name}'){
          			htmlVal += '<button data-toggle="modal" data-target="#updateQna'+qna.qnaNum+'" type="button">수정</button>';
          			htmlVal += '<button class="delete btndeleteQna" type="button" data-qnanum="'+qna.qnaNum+'">삭제</button></p>';
          			}
          			htmlVal += '</div>';
          			htmlVal += '<div class="modal" id="updateQna'+qna.qnaNum+'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
          			htmlVal += '<div class="modal-dialog">';
          			htmlVal += '<div class="modal-content">';									
          			htmlVal += '<div class="modal-header">';
          			htmlVal += '<h4 class="modal-title text-center" id="exampleModalLabel">Q&A 수정<button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button></h4>';			
          			htmlVal += '</div>';
          			htmlVal += '<form id="frmupdateQna'+qna.qnaNum+'">';
          			htmlVal += '<div class="modal-body">';
          			htmlVal += '<div class="mb-3"><br>';
              		htmlVal += '<textarea class="form-control memQuestion" name="memQuestion" placeholder="내용" style="height: 300px;">'+qna.memQuestion+'</textarea>';
              		htmlVal += '</div>';
              		htmlVal += '</div>';              		
           			htmlVal += '<div class="modal-footer">';
       				htmlVal += '<div class="button notice-btn">';
   					htmlVal += '<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>';
   					htmlVal += '<button form="frmupdateQna'+qna.qnaNum+'" type="button" class="update btnupdateQna" data-dismiss="modal" data-qnanum="'+qna.qnaNum+'">등록</button>';												
   					htmlVal += '</div>';
   					htmlVal += '</div>';
              		htmlVal += '</form>';
   					htmlVal += '</div>';
   					htmlVal += '</div>';
   					htmlVal += '</div>';
   					htmlVal += '<div class="modal" id="replyQna'+qna.qnaNum+'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
   					htmlVal += '<div class="modal-dialog">';
   					htmlVal += '<div class="modal-content">';								
   					htmlVal += '<div class="modal-header">';
   					htmlVal += '<h4 class="modal-title text-center" id="exampleModalLabel">Q&A 답변';
   					htmlVal += '<button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button></h4>';										    
   					htmlVal += '</div>';							
					htmlVal += '<form id="frmreplyQna'+qna.qnaNum+'">';
   					htmlVal += '<div class="modal-body">';													
   					htmlVal += '<div class="mb-3"><br>';
   					htmlVal += '<textarea class="form-control hostAnswer" name="hostAnswer" placeholder="내용" style="height: 300px;"></textarea>';
   					htmlVal += '</div>';
   					htmlVal += '</div>';
   					htmlVal += '<div class="modal-footer">';
   					htmlVal += '<div class="button notice-btn">';
   					htmlVal += '<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>';
   					htmlVal += '<button form="frmreplyQna'+qna.qnaNum+'" type="button" class="reply btnreplyQna" data-dismiss="modal" data-pronum="'+qna.proNum+'" data-qnanum="'+qna.qnaNum+'">등록</button>';												
					htmlVal += '</div>'; 
					htmlVal += '</div>';										
					htmlVal += '</form>';
					htmlVal += '</div>';
					htmlVal += '</div>';
   					htmlVal += '</div>';    
          		}
          		$("div[id=qList]").html(htmlVal);
          		
          		// 화면 element가 다시 생겨났으므로 event 다시 등록
          		$(".btnupdateQna").on("click", updateQna);
          		$(".btndeleteQna").on("click", deleteQna);
          		$(".btnreplyQna").on("click", replyQna);
          	}
          	// 로딩되면 event 등록
          	/* updateQna ajax */
          	$(".btnupdateQna").on("click", updateQna);
          	function updateQna() {

          		var qnanum = $(this).data("qnanum"); 

          		$.ajax({   
          			  url: "${pageContext.request.contextPath}/product/detail/qnaupdate"
           		    , type: "POST"
          			, data: {qnaNum:qnanum, proNum:$("[name=proNum]").val(), memQuestion: $(this.form.memQuestion).val()}
          			, dataType: "json"  
          			, success: function (result) { 
          				console.log(result);

           				if(result.length > 0) { 
           					alert("수정되었습니다.")
           					displayQna(result);
           				}            				 
           			}
         		    , error : function(request,status,error) {
        			   alert("code:" + request.status + "\n" + "message:" +
        					 request.responseText + "\n" + "error:" + error); 
        			}
        		    , beforeSend : function(xhr){
						xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
        			}
           		});
          		
           	}
          	
          	/* deleteQna ajax */
           	$(".btndeleteQna").on("click", deleteQna);
          	function deleteQna() {
          		 
          		var qnanum = $(this).data("qnanum"); 
          		
          		if(confirm("QNA를 삭제하시겠습니까?")){
	          		$.ajax({   
	          			  url: "${pageContext.request.contextPath}/product/detail/qnadelete"
	           		    , type: "POST"
	          			, data: {qnaNum:qnanum, proNum:$("[name=proNum]").val()}
	          			, dataType: "json"  
	          			, success: function (result) { 
	          				console.log(result);
	
	           				if(result.length > 0) { 
	           					alert("삭제되었습니다.")
		           				displayQna(result);
	           				}            				 
	           			}
	         		    , error : function(request,status,error) {
	        			   alert("code:" + request.status + "\n" + "message:" +
	        					 request.responseText + "\n" + "error:" + error); 
	        			}
	        		    , beforeSend : function(xhr){
								xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
	        			}
	           		});
          		} else {
          			return false;
          		}
           	}
          	/* replyQna ajax */
          	$(".btnreplyQna").on("click", replyQna);
          	function replyQna() {
          		var hostAnswerLength = $(this.form.hostAnswer).val().trim().length;
          		if(hostAnswerLength < 1) {
          			alert("글자 수가 적으면 등록되지 않습니다. 글을 입력해주세요.")
          			$(this.form.hostAnswer).focus()
          			$(this.form.hostAnswer).val("")
          			return false;
          		}
          		var qnanum = $(this).data("qnanum");
          		var pronum = $(this).data("pronum");

          		$.ajax({   
          			  url: "${pageContext.request.contextPath}/product/detail/qnareply"
           		    , type: "POST"
          			, data: {qnaNum:qnanum, proNum:pronum, hostAnswer: $(this.form.hostAnswer).val()}
          			, dataType: "json"  
          			, success: function (result) { 
          				console.log(result);

           				if(result.length > 0) { 
           					alert("답변이 등록 되었습니다.")
           					displayQna(result);
           				}            				 
           			}
          			, error : function(request,status,error) {
	        			   alert("code:" + request.status + "\n" + "message:" +
	        					 request.responseText + "\n" + "error:" + error); 
	                }
          			, beforeSend : function(xhr){
								xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
          			}
           		});
          		
           	}

        </script>
		</section>
		<%@ include file="/WEB-INF/views/module/footer.jsp" %>
		
    </body>
</html>