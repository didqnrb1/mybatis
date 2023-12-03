<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
    <style>
        body {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            background-color: #f2f2f2;
        }

        #edit {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        #edit td {
            padding: 10px;
            text-align: left;
        }

        #edit input[type="text"],
        #edit textarea {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
            box-sizing: border-box;
        }

        #edit button {
            background-color: #006bb3;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #edit button[type="button"] {
            background-color: #d9534f;
        }

        #edit button:hover {
            background-color: #005580;
        }
    </style>
</head>
<body>

<h1>Edit Post</h1>

<form:form commandName="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr>
            <td>Category:</td>
            <td>
                <input list="category" name="category">
                <datalist id="category">
                    <option value="메모">
                    <option value="자기계발">
                    <option value="독서">
                    <option value="할 일">
                </datalist>
            </td>
        </tr>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="submit">등록하기</button>
    <button type="button">취소하기</button>
</form:form>

</body>
</html>
