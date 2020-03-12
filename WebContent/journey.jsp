<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Journey</title>
<style>
body{


 background: transparent url("https://wallpaperplay.com/walls/full/7/c/6/45649.jpg") no-repeat scroll center top / cover;
 overflow: hidden;
}

li a{
 position:absolute;
 top:-60px;
 color:#fff;
 /* Safari */
 -webkit-transform: rotate(-45deg);
 
 /* Firefox */
 -moz-transform: rotate(-45deg);
 
 /* IE */
 -ms-transform: rotate(-45deg);
 
 /* Opera */
 -o-transform: rotate(-45deg);
 
 /* Internet Explorer */
 filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
 width:100px;
 text-decoration:none;
 
}

ul{
 position:absolute;
 top: 50%;
 transform: translate(0%, -50%);;
 display: flex;
 flex-wrap: wrap;
 justify-content: center;
 align-items: center;
 width:100%;
 padding-left:0px;


 
}

li:hover{
 background-color:#008000;
}

li {
 position:relative;
 text-decoration:none;
 list-style-type:none;
 width:20px;
 height:20px;
 border:5px solid #900;
 border-radius: 100%;
 display:inline-block;
 margin-right:20px;

}

li::before {
 content: "";
 display: block;
 width:25px;
 border-top:5px solid #900;
 border-bottom:5px solid #900;
 height:5px;
 margin-left:23px;
 margin-top:3px;
} 

li:last-child::before {
 display:none;
 
}

li:last-child {
 margin-right:0;
 
}
</style>
</head>
<body>
<ul>
    <li><a href="">BeWaiting</a></li>
    <li><a href="">Valid</a></li>
    <li><a href="">Defaulter</a></li>
    <li><a href="">Valid</a></li>
    <li><a href="">Comple</a></li>
    <li><a href="">Certif</a></li>
    <li><a href="">Clsol</a></li>
    
</ul>
</body>
</html>