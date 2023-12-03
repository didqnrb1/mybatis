<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Post</title>
    <style>
        body {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            background-color: #f2f2f2;
            margin: 20px;
            text-align: center;
        }

        h1 {
            color: #006bb3;
        }

        form {
            width: 50%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        table, tr, td {
            border: 1px solid #ddd;
        }

        td {
            padding: 12px;
            text-align: left;
        }

        input, textarea {
            width: calc(100% - 20px);
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        button {
            background-color: #006bb3;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>

<form action="addok" method="post">
    <table>
        <tr><td>Category:</td><td>
            <input list="category" name="category">
            <datalist id="category">
                <option value="메모">
                <option value="자기계발">
                <option value="독서">
                <option value="할 일">
            </datalist></td></tr>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="submit">등록하기</button>
</form>

</body>
</html>
