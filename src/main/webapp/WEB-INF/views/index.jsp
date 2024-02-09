<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <meta charset="UTF-8">--%>
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <title>텀블벅</title>
    <link rel="stylesheet" href="<c:url value='/static/main/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/static/main/style.css'/>">
    <script src="https://kit.fontawesome.com/409fef83e5.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="header">
    <div class="hd">
        <h1 class="logo">
            <a href="#"></a>
        </h1>
        <div class="lftSmn">
            <div class="pjtUp">
                <a href="#">프로젝트 올리기</a>
            </div>
            <div class="like">
                <i class="fa-regular fa-heart"></i>
            </div>
            <div class="alm">
                <i class="fa-regular fa-bell"></i>
            </div>
            <div class="userIf">
                <div class="infoGr">
                    <div class="ifImg">
                        <span></span>
                    </div>
                    <div class="fontsize" >
                        <a href="<c:url value='/user/login'/>">로그인</a>
                        <%--                    <div class="ifTxt">로그인/회원가입</div>--%>
                        <%--                    <div class="ifTxt">이한수</div>--%>
                    </div> <div class="fontsize" >
                    <a href="<c:url value='/join/add'/>">회원가입</a>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!--스크롤 시 고정되는 header-->
    <div class="sd">
        <div class="lftCtmn">
            <!--메뉴 슬라이드-->
            <div class="cateMn">
                <div class="mnSld">
                    <div class="hmMenu">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    카테고리
                </div>
                <div class="home">홈</div>
                <div class="popul">인기</div>
                <div class="new">신규</div>
                <div class="final">마감임박</div>
            </div>
            <!--검색창-->
            <div class="schMn">
                <input type="text" placeholder="검색어를 입력해주세요.">
                <div class="schIcon">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="coNt">
    <!--왼쪽 배너-->
    <div class="lFt">
        <div class="bigBan">
            <a href="#">
                <img src="static/img/mdban01.webp" alt="">
            </a>
        </div>
        <div class="txtInfo">
            <a href="#">
                <div class="banTxt">
                    <div class="txTb">미리 준비하는 2024</div>
                    <div class="deSc">
                        선선해지는 가을이 왔다는 건 어느덧 내년을 준비할 시간이 됐다는 것.
                        텀블벅 캘린더∙다이어리로 올 한해의 추억을 기록하고, 2024년 계획을 세워보는 건 어떨까요?
                    </div>
                </div>
            </a>
        </div>
        <a class="linkView">
            <span>프로젝트 292개 전체보기</span>
            <img src="static/img/arrow.png" alt="">
        </a>
    </div>
    <div class="rGt">
        <div class="gRd"><!--Grid를 이용하기 위해 div로 한번 더 묶어줌-->
            <div class="banBox"><!--1번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban01.webp" alt="">
                        </a>
                    </div>
                    <div class="faLike">
                        <button class="likeBtn"><!--하트 처리 미완성-->

                        </button>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">아트북디자인더하트</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">12+1지신 노리개 부적 뱃지와 2024 새해 맞이</a>
                        </div>
                        <div class="pstTag">
                            <span>557% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--2번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban02.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">실용·취미</a>
                                </span>
                            <span class="bar">
                                    <a href="#">MINCHANG</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">[출판세금] 1인출판사의 세금 실력을 특별하게 하는 법</a>
                        </div>
                        <div class="pstTag">
                            <span>101% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--3번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban03.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">액세서리</a>
                                </span>
                            <span class="bar">
                                    <a href="#">Mirror in MIRROr</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">12+1지신 노리개 부적 뱃지와 2024 새해 맞이</a>
                        </div>
                        <div class="pstTag">
                            <span>1406% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--4번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban04.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">디자인 문구</a>
                                </span>
                            <span class="bar">
                                    <a href="#">글리팅(glitting)</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">무하와 전통의 만남, 박지로 색칠하는 &lt;한복 글리팅&gt;</a>
                        </div>
                        <div class="pstTag">
                            <span>1422% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--5번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban05.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">디자인 소품</a>
                                </span>
                            <span class="bar">
                                    <a href="#">아나레 ahnale</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">[한정]2024년을 행운의 해로! 마법의 도구 굿럭오마모리</a>
                        </div>
                        <div class="pstTag">
                            <span>722% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--6번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban06.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">가방</a>
                                </span>
                            <span class="bar">
                                    <a href="#">Vao</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">한국의 MBTI를 걸쳐봐, 실용성과 특별함을 담은 꼬꼬지백</a>
                        </div>
                        <div class="pstTag">
                            <span>52% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--7번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban07.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">주얼리</a>
                                </span>
                            <span class="bar">
                                    <a href="#">아사스</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">2024 용의 해, 내 손에 쥐어질 행운의 여의주 주얼리</a>
                        </div>
                        <div class="pstTag">
                            <span>383% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banBox"><!--8번 배너-->
                <div class="mnBan">
                    <div class="banImg">
                        <a href="#">
                            <img src="static/img/mnban08.webp" alt="">
                        </a>
                    </div>
                </div>
                <div class="banTxt">
                    <div class="txtGr">
                        <div class="subTxt">
                                <span>
                                    <a href="#">디자인 소품</a>
                                </span>
                            <span class="bar">
                                    <a href="#">인형뜨는 손</a>
                                </span>
                        </div>
                        <div class="subTit">
                            <a href="#">귀여운 아기용 용용이 뜨개인형!! [뜨개인형 DIY키트]</a>
                        </div>
                        <div class="pstTag">
                            <span>331% 달성</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>