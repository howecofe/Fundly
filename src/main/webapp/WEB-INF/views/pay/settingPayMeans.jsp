<%--
  Created by IntelliJ IDEA.
  User: greta
  Date: 2024/02/01
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<script type="text/javascript" src="/static/product/vendor/jquery.bpopup.min.js"></script>
<style>
    button {
        cursor: pointer;
    }

    .removeBtn:hover, .defaultSetBtn:hover {
        background-color: rgb(230, 230, 230);
    }

    .default_tag {
        margin-left: 2px;
        position: relative;
        z-index: 1;
        top: -0.3em;
        min-height: 18px;
        padding: 0px 6px;
        font-size: 10px;
        line-height: 16px;
        letter-spacing: -0.005em;
        display: inline-flex;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        border-radius: 2px;
        font-weight: bold;
        color: white;
        background: rgb(255, 87, 87);
    }

    .imgBox {
        display: block;
        border-radius: 4px;
        overflow: hidden;
        width: 80px;
        height: 54px;
        border: 1px solid rgb(230, 230, 230);
    }

    .listBox {
        border-radius: 4px;
        border: 1px solid rgb(230, 230, 230);
    }

    .listBoxElement {
        display: flex;
        margin-top: 28px;
        border-bottom: 1px solid rgb(230, 230, 230);
    }

    .listBoxElement:last-child {
        border-bottom: none;
    }

    .cardImg {
        width: 85px;
        height: 54px;
        border-radius: 4px;
        overflow: hidden;
        display: block;
    }

    .content {
        flex-grow: 1;
        display: inline-flex;
        flex-flow: column;
        justify-content: center;
    }

    .companyName {
        font-size: 16px;
        font-weight: 700;
        line-height: 27px;
        letter-spacing: -0.020em;
    }

    .cardNumber {
        font-size: 13px;
        line-height: 20px;
        letter-spacing: -0.015em;
        color: #3D3D3D;
    }

    .func {
        display: flex;
        align-items: center;
    }

    .meatballBtn {
        position: relative;
        border: 1px solid rgb(230, 230, 230);
        background: rgb(255, 255, 255);
        border-radius: 100%;
        width: 26px;
        height: 26px;
        min-height: 26px;
    }

    .btnIconDiv img {
        width: 100%;
        height: auto;
        display: block;
    }

    .thumbnail, .func {
        margin: 0 20px;
    }

    .clickBtnContent {
        min-width: 153px;
        margin-top: 9px;
        position: absolute;
        border: 1px solid rgb(230, 230, 230);
        border-radius: 4px;
        box-shadow: rgba(0, 0, 0, 0.15) 0 2px 4px 0;
        background: rgb(255, 255, 255);
        padding: 4px 0;
        z-index: 1;
        display: none;
    }

    .clickBtnContent button {
        background: rgb(255, 255, 255);
        width: 100%;
        border: 0;
        padding: 0 12px;
        height: 40px;
        display: flex;
        text-align: left;
        align-items: center;
    }
</style>
<div class="flexOnly">
    <div class="container">
        <div class="profileimg">
            <div class="profileimgFormHeader flexOnly">
                <p class="pTag">등록된 결제수단</p>
                <button type="button" id="regBtn" class="ButtonTag">+ 추가</button>
            </div>
            <div class="listBox" id="pay_means_data">
                <c:forEach var="payMeansDto" items="${list}">
                    <div class="listBoxElement">
                        <div class="thumbnail">
                            <div class="cardImg">
                                <img class="imgBox" src="<c:url value='${payMeansDto.file_path}${payMeansDto.file_name}${payMeansDto.file_extension}'/>" alt="결제수단 이미지">
                            </div>
                        </div>
                        <div class="content">
                            <div class="companyName">${payMeansDto.card_co_type}
                                <c:if test="${payMeansDto.default_pay_means_yn == 'Y'}">
                                    <span class="default_tag">기본</span>
                                </c:if>
                            </div>
                            <div class="cardNumber">************${payMeansDto.card_no}</div>
                        </div>
                        <div class="func">
                            <button type="button" class="meatballBtn">
                                    <img src="/static/img/meatball.svg" alt="btn" />
                            </button>
                            <div class="clickBtnContent">
                                <button type="button" class="defaultSetBtn" data-user-id="${payMeansDto.user_id}" data-pay-means-id="${payMeansDto.pay_means_id}">기본 결제수단 지정</button>
                                <button type="button" class="removeBtn" data-user-id="${payMeansDto.user_id}" data-pay-means-id="${payMeansDto.pay_means_id}">삭제</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="userSettingContainer">
        <div class="userInfoMod"></div>
        <div class="userInfoComment">
            <p>결제수단을 등록/삭제하면 현재 후원에 등록한 결제수단이 변경/삭제되나요?</p>
            <div class="userInfoCommentContent">
                아닙니다. 이곳에서 결제수단을 등록/삭제하더라도 이미 후원에 등록한 결제수단이 변경/삭제되지 않습니다. 이를 변경하시려면 후원현황에서 변경해주세요.
                <span><a href="<c:url value='/mypage/fundingProject'/>">후원현황 바로가기</a></span>
            </div>
        </div>
    </div>
</div>
<%--register popup--%>
<jsp:include page="registerCardFormPop.jsp" />
<script>
    let msg = "";
    if (msg === "LIST_ERROR")  alert("결제수단 조회에 실패했습니다. 다시 시도해 주세요.");

    $(document).ready(function () {
        // 추가 버튼 클릭 시 팝업창 open
        $("#regBtn").click(function (e) {
            e.preventDefault();
            $('#popRegister').bPopup();

        })

        // esc 버튼 클릭 시 form 초기화
        $(document).keydown(function(event) {
            if ( event.keyCode == 27 || event.which == 27 ) {
                $('#form')[0].reset();
            }
        });

        // 팝업창 닫기 버튼 클릭 시 form 초기화
        $('.b-close').click(function () {
            $('#form')[0].reset();
        })

        // 팝업창 열린 상태에서 ESC 버튼 누르면 form 초기화

        $(".meatballBtn").click(function () {
            let clickBtnContent = $(this).siblings('.clickBtnContent');
            clickBtnContent.toggle();
        });

        // 다른 영역 클릭 시, 요소 숨기기
        $(document).click(function (event) {
            if (!$(event.target).closest('.meatballBtn').length) {
                $('.clickBtnContent').hide();
            }
        });

        $(".removeBtn").click(function () {
            if (!confirm("정말로 삭제하시겠습니까?")) return; // '취소' 클릭 시
            let userId = $(this).data('user-id');
            let payMeansId = $(this).data('pay-means-id');

            let currentUnixTime = Math.floor((new Date()).getTime() / 1000); // 현재시간 unix time
            let threeMonthsAgoUnixTime = currentUnixTime - (3 * 30 * 24 * 60 * 60); // 현재 시간으로부터 3개월 전 unix time

            $.ajax({
                type: "POST",
                url: "/pay/remove",
                data: {
                    user_id: userId, pay_means_id: payMeansId,
                    from: threeMonthsAgoUnixTime, to: currentUnixTime
                },
                success: function () {
                    alert("결제수단 삭제에 성공했습니다.");
                    location.reload();
                },
                error: function () {
                    alert("결제수단 삭제에 실패했습니다. 다시 시도해주세요.");
                }
            })
        })

        $(".defaultSetBtn").click(function () {
            let userId = $(this).data('user-id');
            let payMeansId = $(this).data('pay-means-id');

            $.ajax({
                type: "POST",
                url: "/pay/update",
                data: {user_id: userId, pay_means_id: payMeansId},
                success: function () {
                    alert("기본 결제수단 지정에 성공했습니다.");
                    location.reload();
                },
                error: function () {
                    alert("기본 결제수단 지정에 실패했습니다.");
                }
            })
        })

        // Register pop-up form
        let currentYear = new Date().getFullYear();
        let selectedYear = currentYear;
        let selectedMonth = '01';

        // years select
        for (let i = currentYear; i <= currentYear + 10; i++) {
            let yearsSelectedOption = '';
            if (i == selectedYear) {
                yearsSelectedOption = 'selected';
            }
            let yearsOption = '<option value=' + i + ' ' + yearsSelectedOption + '>' + i + '</option>';
            $('#years').append(yearsOption);
        }

        // months select
        for (let i = 1; i <= 12; i++) {
            let monthsSelectedOption = '';
            let monthValue = i < 10 ? '0' + i : '' + i; // 일의 자리 숫자면 앞에 0붙이기
            let monthName = i + '월';
            if (monthValue === selectedMonth) {
                monthsSelectedOption = 'selected';
            }
            let monthsOption = '<option value=' + monthValue + ' ' + monthsSelectedOption + '>' + monthName + '</option>';
            $('#months').append(monthsOption);
        }

        $('#card_valid_date').val($('#years').val() + '-' + $('#months').val());

        $('#months, #years').change(function () {
            $('#card_valid_date').val($('#years').val() + '-' + $('#months').val());
        })

        $('#card_co_info_agree_yn').change(function () {
             $('#card_co_info_agree_yn_err_msg').text(
                 !$(this).prop("checked") ? '결제사 정보제공에 동의하셔야 합니다.': ''
             );
        });

        $("#submitBtn").click(function () {
            let formData = {
                own_type: $('input[name="own_type"]:checked').val(),
                card_no: $('#card_no').val(),
                card_valid_date: $('#card_valid_date').val(),
                own_birth: $('#own_birth').val(),
                card_pwd: $('#card_pwd').val(),
                card_co_info_agree_yn: $('#card_co_info_agree_yn').val(),
                default_pay_means_yn: $('#default_pay_means_yn').val()
            };

            if (!$("#card_co_info_agree_yn").prop("checked")) {
                $('#card_co_info_agree_yn_err_msg').text('결제사 정보제공에 동의하셔야 합니다.');
            } else {
                $.ajax({
                    type: "POST",
                    url: "/pay/register",
                    data: formData,
                    success: function () {
                        $('#popRegister').bPopup().close(); // 팝업창 닫기
                        alert("결제수단 등록에 성공했습니다.");
                        location.reload();
                    },
                    error: function (e) {
                        alert("결제수단 등록에 실패했습니다. 다시 시도해주세요.");
                        // console.log(e)
                        // let payMeansDto = e.responseJSON.payMeansDto;

                        // TODO: 유효성 검증 메시지
                        // 카드 비밀번호 앞 2자리: 비밀번호를 입력하셔야 합니다.
                        // 소유주 생년월일: 생년월일을 입력하셔야 합니다.
                        // 카드번호: 카드번호를 입력하셔야 합니다.
                        // 카드번호: 카드번호가 유효하지 않습니다.
                        // 카드 유효기간: 유효기간이 일치하지 않습니다.
                        // 카드 비밀번호 앞 2자리: 유효하지 않은 형식입니다.
                        // 소유주 생년월일: 입력값이 유효하지 않습니다.
                        // (완료) 결제사 정보제공에 동의하셔야 합니다.
                    }
                })
            }
        })

        // 라디오 버튼의 변경 이벤트 감지
        $('input[name="own_type"]').change(function () {
            // 선택된 라디오 버튼의 값 가져오기
            let selectedValue = $('input[name="own_type"]:checked').val();

            // 결과를 출력할 엘리먼트 선택
            let outputElem = $('#own_type_output');

            // 선택된 값에 따라 다르게 출력
            if (selectedValue === 'personal') {
                outputElem.html('<label for="own_birth">소유주 생년월일</label>' +
                    '<input id="own_birth" type="text" name="own_birth" maxlength="6" placeholder="예) 920101" ' +
                    'onKeyup="this.value=this.value.replace(/[^0-9]/g,\'\');">');
            } else if (selectedValue === 'corporate') {
                outputElem.html('<label for="own_birth">사업자등록번호</label>' +
                    '<input id="own_birth" type="text" name="own_birth" maxlength="6" placeholder="예) 1078783297" ' +
                    'onKeyup="this.value=this.value.replace(/[^0-9]/g,\'\');">');
            }
        })
})
</script>