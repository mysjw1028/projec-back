<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

    <div class="container">

        <div class="graph">구독</div>
        <table>

            <thead class="company_header">

                <tr>
                    <th>회사명</th>
                    <th>현재 올라온 공고</th>
                    <th>일자</th>
                    <th>상태</th>
                </tr>
            </thead>

            <tbody>
                <!--for문 돌리기-->

                <tr class="company_body" onclick="location.href='/'" style="cursor:pointer">
                    <td><a href="'/">회사명</td></a>
                    <td><a href="'/">회사명</td></a>
                    <td>일자</td>
                    <td class="recruitment"><a class="next_company" href="'/">모집중</td></a>
                </tr>
                <tr class="company_body" onclick="location.href='/'" style="cursor:pointer">
                    <td><a href="'/">회사명</td></a>
                    <td><a href="'/">회사명</td></a>
                    <td>일자</td>
                    <td class="recruitment"><span class="next_company" href="'/">모집중</td></span>
                </tr>
                <tr class="company_body" onclick="location.href='/'" style="cursor:pointer">
                    <td><a href="'/">회사명</td></a>
                    <td><a href="'/">회사명</td></a>
                    <td>일자</td>
                    <td class="recruitment"><a class="next_company" href="'/">모집중</td></a>
                </tr>
                <tr class="company_body" onclick="location.href='/'" style="cursor:pointer">
                    <td><a href="'/">회사명</td></a>
                    <td><a href="'/">회사명</td></a>
                    <td>일자</td>
                    <td class="deadline">
                        <a class="out_company" href="'/">마감
                    </td></a>
                </tr>
                <tr class="company_body" onclick="location.href='/'" style="cursor:pointer">
                    <td><a href="'/">회사명</td></a>
                    <td><a href="'/">회사명</td></a>
                    <td>일자</td>
                    <td class="deadline">
                        <a class="out_company" href="'/">마감
                    </td></a>
                </tr>
        </table>
        </tbody>


        </table>
    </div>
    <!--container-->
</body>

</html>

<%@ include file="../layout/footer.jsp"%>