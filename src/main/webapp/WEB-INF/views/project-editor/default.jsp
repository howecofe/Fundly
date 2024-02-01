<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<!-- 모든 input에 같은 클래스 적용 (outline 등 속성 적용 위해) ex. pjInput-->
<body>
<div class="pjContentWrapper">
    <div class="pjContent">
        <!-- 카테고리 -->
        <div class="pjCategory__Wrapper">
            <div class="pjCategory__info"></div>
            <div class="pjCategory__form"></div>
        </div>
        <!-- 프로젝트 제목 -->
        <div class="pjTitle__Wrapper">
            <dl class="pjTitle__info">
                <dt class="pjTitle__infoTitle">프로젝트 제목 <span class="icon"><b>*</b></span>
                </dt>
                <dd class="pjTitle__infoDescription">프로젝트의 주제, 창작물의 특징이 드러나는 멋진 제목을 붙여주세요.
                </dd>
            </dl>
            <div class="pjTitle__form">
                <div class="pjTitle__form__longTitle">
                    <div class="pjTitle__form__longTitle__tooltip">
                        <div class="title"></div>
                        <div class="image">
                            <img src="" alt="">
                        </div>
                    </div>
                    <div class="inputForm">
                        <input type="text" class="pjInput" placeholder="긴 제목을 입력해주세요."/>
                    </div>
                </div>

                <div class="pjTitle__form__shortTitle">
                    <div class="pjTitle__form__shortTitle__tooltip">
                        <div class="title"></div>
                        <div class="image">
                            <img src="" alt="">
                        </div>
                    </div>
                    <div class="inputForm">
                        <input type="text" class="pjInput" placeholder="짧은 제목을 입력해주세요.">
                    </div>
                </div>
            </div>
        </div>

        <!--프로젝트 요약-->
        <div class="pjSummary__Wrapper">
            <dl class="pjSummary__info">
                <dt class="pjSummary__infoTitle">프로젝트 요약 <span class="icon"><b>*</b></span>
                </dt>
                <dd class="pjSummary__infoDescription">후원자 분들이 프로젝트를 빠르게 이해할 수 있도록
                    명확하고 간략하게 소개해주세요.
                </dd>
            </dl>
            <div class="pjSummary__form">
                <div class="pjSummary__form__tooltip">
                    <div class="title"></div>
                    <div class="image">
                        <img src="" alt="">
                    </div>
                    <div class="inputForm">
                        <textarea class="pjInput"></textarea>
                    </div>
                </div>
            </div>
        </div>

        <!--프로젝트 대표이미지-->
        <div class="pjThumbnail__Wrapper">
            <dl class="pjThumbnail__info">
                <dt class="pjThumbnail__infoTitle">프로젝트 대표이미지 <span class="icon"><b>*</b></span>
                </dt>
                <dd class="pjThumbnail__infoDescription">후원자들이 프로젝트의 내용을 쉽게 파악하고 좋은 인상을 받을 수 있도록 이미지 가이드라인을 따라 주세요
                </dd>
                <div class="notice">
                    <div class="notice__title">1개 이상의 이미지를 등록하면 이미지 슬라이더 형식으로 제공됩니다.</div>
                    <div>푸시 메시지 등 이미지가 1개만 제공되는 상황에서 대표 이미지가 활용됩니다.</div>
                </div>
            </dl>
            <div class="pjThumbnail__form">
                <div class="pjThumbnail__form__tooltip">
                    <div class="title"></div>
                    <div class="image">
                        <img src="" alt="">
                    </div>
                    <div class="imageUploader">
                        <span></span>
                        <p>최소 1개, 최대 5개까지 업로드 가능</p>
                        <p>파일 형식: jpg 또는 png / 사이즈: 가로 1,240px, 세로 930px 이상</p>
                        <strong>※ 이미지를 등록하면 즉시 반영됩니다.</strong>
                        <input accept=".jpg, .jpeg, .png" type="file" multiple="">
                    </div>
                </div>
            </div>
        </div>
        <!-- 프로젝트 해시태그 -->
        <div class="pjHashTag__Wrapper">
            <dl class="pjHashTag__info">
                <dt class="pjHashTag__infoTitle">프로젝트 요약 <span class="icon"><b>*</b></span>
                </dt>
                <dd class="pjHashTag__infoDescription">후원자 분들이 프로젝트를 빠르게 이해할 수 있도록
                    명확하고 간략하게 소개해주세요.
                </dd>
            </dl>
            <div class="pjHashTag__input">
                <input type="text" class="pjInput" placeholder="Enter를 눌러서 핵심 키워드를 등록해주세요.(최대)">
            </div>
        </div>
    </div>
</div>

</body>
</html>