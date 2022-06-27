<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETMILY - 회원가입</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<style>

	/* 전체 페이지 크기 */
	#wrap {
		width: 1200px;
		height: auto;
		margin: 0 auto;
	}
	#enroll-member-page-area {
		background-color: rgb(255, 246, 218);
		height: auto;
		display: flex;
	}

	/* enroll-member-page-area */
	#enroll-member-page-area a {text-decoration: none;}

	/* enroll-member-page-area > enroll-member-box-area */
	#enroll-member-box-area {
        margin-top: 40px;
        margin-left: auto;
        margin-right: auto;
    }

	/* enroll-member-box-title */
	#enroll-member-box-title {
		color: black;
		font-weight: bold;
		font-size: 23px;
        margin-bottom: 15px;
	}

	/* enroll-member-box-content */
	#enroll-member-box-content {
        border-top: 1px solid rgb(125, 125, 125);
		background-color: white;
		width: 850px;
		height: 1100px;
	}
    #enroll-member-box-content-1 {
        width: 90%;
        height: 10%;
        font-size: 14px;
        line-height: 35px;
        margin: 0 auto;
        padding-top: 20px;
        padding-left: 10px;
        box-sizing: border-box;
    }
	#enroll-member-form {
		width: 100%;
		height: 90%;
	}
	#enroll-member-form-wrap {
		width: 90%;
		height: 100%;
        margin: 0 auto;
        border-top: 1px solid rgb(125, 125, 125);
	}
    #enroll-member-form-wrap > div {
        float: left;
        box-sizing: border-box;
    }

    .test-row {
        width: 100%;
        height: 70px;
        display: flex;
    }
    .test-row > div {
        float: left;
        box-sizing: border-box;
        margin: auto;
    }
    .test-col-1 {
        font-size: 18px;
        font-weight: bold;
        width: 25%;
        height: 100%;
        padding-left: 30px;
        padding-top: 18px;
        background-color: rgb(243, 243, 243);
    }
    .test-col-2 {
        width: 45%;
        padding-left: 20px;
    }
    .test-col-2 > input {
        width: 292px;
        height: 34px;
        border-radius: 5px;
    }
    .test-col-3 {
        width: 30%;
    }
    .dummy-row-top {
        width: 100%;
        height: 20px;
        display: flex;
    }
    .dummy-row-bottom {
        width: 100%;
        height: 265px;
        display: flex;
    }

	/* enroll-member-box-tail */
    #enroll-member-box-tail {
        width: 340px;
        height: 45px;
        margin: 40px auto;
    }
    #enroll-member-box-tail-button-wrap {
        width: 100%;
        height: 100%;
        margin: 0 auto;
    }
    #enroll-member-box-tail-button-wrap > #previous-button {float: left;}
    #enroll-member-box-tail-button-wrap > #succeeding-button {float: right;}

    /* enroll-member-box-tail > 돌아가기, 회원가입 버튼 부분 */
	#enroll-member-box-tail-button-wrap button {
		width: 150px;
		height: 45px;
		color: white;
		font-size: 18px;
		font-weight: bold;
		border-radius: 5px;
        cursor: pointer;
	}
    #previous-button > button {
        background-color: rgb(190, 190, 190);
        border: 1px solid rgb(125, 125, 125);
    }
    #succeeding-button > button {
        background-color: rgb(232, 191, 123);
        border: 1px solid rgb(155, 128, 82);
    }
	
</style>
</head>
<body>

	<div id="wrap">
	
		<!-- header -->
		<%@ include file="../common/header.jsp" %>
		
		<div id="enroll-member-page-area">
			<div id="enroll-member-box-area">

				<div id="enroll-member-box-title">
					&nbsp;회원가입
				</div>

				<div id="enroll-member-box-content">
                    <div id="enroll-member-box-content-1">
                            Petmily 사이트를 방문해주셔서 감사합니다.<br>
                            회원가입을 위해서 다음 정보를 입력 부탁드리겠습니다.
                    </div>
					<form id="enroll-member-form" method="post" action="/SemiProject/insert.me">
						<div id="enroll-member-form-wrap">

                            <div class="test-row dummy-row-top">
                                <div class="test-col-1"></div>
                                <div class="test-col-2"></div>
                                <div class="test-col-3"></div>
                            </div>

                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>아이디</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="userId" required>
                                </div>
                                <div class="test-col-3">
                                    아이디 중복 확인
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>비밀번호</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="password" name="userPwd" required>
                                </div>
                                <div class="test-col-3">
                                    삭제
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>비밀번호 확인</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="password" name="pwdChk" required>
                                </div>
                                <div class="test-col-3">
                                    비밀번호 체크
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>이메일 주소</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="email" required>
                                </div>
                                <div class="test-col-3">
                                    <button>인증번호 받기</button>
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>이메일 인증번호</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="emailChk" required>
                                </div>
                                <div class="test-col-3">
                                    <button>이메일 인증번호 확인</button>
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>이름</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="userName" required>
                                </div>
                                <div class="test-col-3">
                                    삭제
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>닉네임</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="userNickname" required>
                                </div>
                                <div class="test-col-3">
                                    닉네임 중복 확인
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>생년월일</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="date" name="birthDate" required>
                                </div>
                                <div class="test-col-3">
                                    삭제
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>휴대전화번호</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="phone" required>
                                </div>
                                <div class="test-col-3">
                                    휴대전화번호 중복 확인
                                </div>
                            </div>
                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>주소</span>
                                </div>
                                <div class="test-col-2">
                                    <input type="text" name="address" required>
                                </div>
                                <div class="test-col-3">
                                    <button>주소찾기</button>
                                </div>
                            </div>

                            <div class="test-row">
                                <div class="test-col-1">
                                    <span>(임시)권한</span>
                                </div>
                                <div class="test-col-2">
                                    <select name="userClass">
                                        <option value="A">관리자</option>
                                        <option value="G">단체</option>
                                        <option value="P">일반</option>
                                    </select>
                                </div>
                                <div class="test-col-3">
                                    삭제
                                </div>
                            </div>

                            <div class="test-row dummy-row-bottom">
                                <div class="test-col-1"></div>
                                <div class="test-col-2"></div>
                                <div class="test-col-3"></div>
                            </div>

						</div>
					</form>
				</div>

                <div id="enroll-member-box-tail">
                    <div id="enroll-member-box-tail-button-wrap">
                        <div id="previous-button">
                            <button onclick="history.back();">돌아가기</button>
                        </div>
                        <div id="succeeding-button">
                            <button type="submit" form="enroll-member-form">회원가입</button>
                        </div>
                    </div>
                </div>

			</div>
		</div>
		
		<!-- footer -->
		<%@ include file="../common/footer.jsp" %>
		
	</div>

</body>
</html>