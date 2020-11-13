<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Call 페이지</title>

</head>

<body>

    <h1>Call 페이지 입니다.</h1>


    n1 : <input type="text" class="n1">
    n2 : <input type="text" class="n2">
    <button type="button" id="callRequestBtn">요청</button>


    <script src="<%= request.getContextPath() %>/resource/js/jquery-3.5.1.min.js" type="text/javascript"></script>
    <!-- <script>
        $(function () {
            $('#callRequestBtn').click(function () {
                var n1 = $('.n1').val();
                var n2 = $('.n2').val();
                var request = $.ajax({
                    url: "<%= request.getContextPath() %>/result.do",
                    method: "POST",
                    data: { n1: n1, n2: n2 },
                    dataType: "json"

                });
                request.done(function (data) {
                    console.log(data);
                });
                request.fail(function (jqXHR, textStatus) {
                    alert("Request failed: " + textStatus);
                });
            });
        });

    </script> -->

    <!-- Javascript Ajax -->
    <script>
        var httpRequest;
        document.getElementById('callRequestBtn').addEventListener('click', makeRequest);

        function makeRequest() {
        var n1 = $('.n1').val();
        var n2 = $('.n2').val();
            httpRequest = new XMLHttpRequest();

            if (!httpRequest) {
                alert('Failed error');
                return false;
            }
            httpRequest.onreadystatechange = function alertContents() {
                if (httpRequest.readyState === XMLHttpRequest.DONE) {
                    if (httpRequest.status === 200) {
                        alert(httpRequest.responseText);
                    } else {
                        alert('request에 뭔가 문제가 있어요.');
                    }
                }
            };
            httpRequest.open('GET', '<%= request.getContextPath() %>/result.jsp?n1=<%="n1"%>?n2=<%="n2"%>', true);
            httpRequest.send();
        }

    </script>
</body>

</html>