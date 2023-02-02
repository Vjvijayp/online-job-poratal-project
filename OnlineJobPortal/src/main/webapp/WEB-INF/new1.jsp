<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html>
<HTML><HEAD><FONT SIZE="5"COLOR="black" FACE="roman">Candidate Registration
Page :
</FONT>
<TITLE>APPLICANT LOGIN PAGE</TITLE>
<META content="text/html; charset=windows-1252" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 9.00.8080.16413"></HEAD>
<BODY BGCOLOR="white" >
<form NAME="CREATEACCTFORM" action="new1.jsp" METHOD="POST" >
<table width="780" border="0" align="center" cellpadding="0"
cellspacing="0">
<table width="100%" border="0" cellpadding="7" cellspacing="0"
class="bg_white">
 <tr>
 <td colspan="2" align="right" valign="top"
class="border_green_btm bg_grey" style="padding:0px 10px 0px 0px;"><span
class="txt_orange">*</span> Required fields</td>
</tr>

<tr>
<td width="400" align="right"
bgcolor="skyblue">Login Information</td>
</tr>
 <tr>
<td align="right" valign="top"><span
class="txt_orange">*</span> Email address:</td>
<td valign="top" >
 <input type="text" maxlength="255" size="30"id="email" name="email" onFocus="hintEvent('EMAILID');"onBlur="hintEvent('EMAILID', 'HIDE'); showEmail(); " value="">
 <table border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>

 <span id="email_msg">
 </span>

 </tr>
 </table>

 <div id="EMAILID" style="width:250px; marginleft:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px;position:absolute;"></div>
<div id="ERR_EMAIL" style="padding: 2px;
width: 400px; display: none;" class="txt_red small_1"></div>
</td>
</tr>
 <tr>
<td align="right" valign="top"><span
class="txt_orange">*</span> First name:</td>
<td valign="top" >
 <input maxlength="50" size="30"
name="firstName" type="text" onFocus="hintEvent('FNAME');"
onBlur="hintEvent('FNAME', 'HIDE');" value="">&nbsp;&nbsp;
<div id="FNAME" style="width:170px;
margin-left:200px; margin-top:-20px; _margin-left:5px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_FNAME" style="padding: 2px;
width: 400px; display: none;" class="txt_red small_1"></div>
</td>
</tr>
<tr>
<td align="right" valign="top">Last name: </td>
<td valign="top" >
<input maxlength="24" size="30" name="lastName"
type="text" value="">
</tr>
<tr>
<td align="right" valign="top"><span
class="txt_orange">*</span> Desired username:</td>
<td valign="top" ><input maxlength="255"
size="30" name="userName" onFocus="hintEvent('UNAME');"
onblur="hintEvent('UNAME', 'HIDE');" type="text" value="">
<div id="UNAME" style="width:250px;
margin-left:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_UNAME" style="padding: 2px;
width: 400px; display: none;" class="txt_red small_1"></div>
</td>
 </tr>
 <tr>
<td align="right" valign="top"><span
class="txt_orange">*</span> Choose a password: </td>
<td valign="top" >
<input maxlength="32" size="30" name="passwd"
type="password" value="">
<div id="PASS" style="width:250px; marginleft:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_PASS" style="padding: 2px; width:
400px; display: none;" class="txt_red small_1"></div>
</td>
</tr>
 <tr>
<td align="right" valign="top"><span
class="txt_orange">*</span> Re-enter password: </td>
<td valign="top" >
<input name="passwd_temp" size="30"
maxlength="32" type="password" value="">
<div id="PASS_TEMP" style="width:250px; marginleft:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_PASS_TEMP" style="padding: 2px;
width: 400px; display: none;" class="txt_red small_1"></div>
</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top"
style="background:url(http://media.monsterindia.com/v2.1/dots.gif) repeatx; padding:0px;"><img src="http://media.monsterindia.com/v2.1/trans.gif"
width="1" height="1" /></td>
</tr>
 <tr>
<td width="400" align="right"
bgcolor="skyblue">Personal Details </td>
<td >&nbsp;</td>
</tr>
 <tr>
<td align="right"><span
class="txt_orange">*</span> Gender:</td>
<td >
<table cellspacing="0" cellpadding="0" border="0"
id="gender_border">
<tr><td>
<input name="gender" type="radio" value="m"
onFocus="hintEvent('GENDER1');" onBlur="hintEvent('GENDER1', 'HIDE');">
 Male&nbsp;&nbsp;&nbsp;
 <input name="gender" type="radio" value="f"
onFocus="hintEvent('GENDER1');" onBlur="hintEvent('GENDER1', 'HIDE');">
 Female </td>
</tr>
</table>
<div id="GENDER1" style="width:250px; marginleft:250px; margin-top:-60px; _margin-left:20px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_GENDER1" style="padding: 2px; width:
400px; display: none;" class="txt_red small_1"></div>
</td>
</tr>
 <tr>
<td colspan="2" align="right" valign="top"
style="background:url(http://media.monsterindia.com/v2.1/dots.gif) repeatx; padding:0px;"><img src="http://media.monsterindia.com/v2.1/trans.gif"
width="1" height="1" /></td>
</tr><tr>
 <td width="400" align="right"
bgcolor="skyblue">Professional Details </td>
 <td >&nbsp;</td>
 </tr>
 <tr>
<td align="right"><span
class="txt_orange">*</span> Total experience:</td>
<td >
<table cellspacing="0" cellpadding="0" border="0"
id="exp_in_months_border">
<tr><td>
 <select name="exp_in_years"
class="Form_fields">
<option value="">- Select -</option>
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">35</option>
<option value="36">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="42">42</option>
<option value="43">43</option>
<option value="44">44</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
</select>&nbsp;Years <select
name="exp_in_months" class="Form_fields" onFocus="hintEvent('WORK_EXP');"
onBlur="hintEvent('WORK_EXP', 'HIDE');">
<option value="">- Select -</option>
<option value="00">0</option>
<option value="01">1</option>
<option value="02">2</option>
<option value="03">3</option>
<option value="04">4</option>
<option value="05">5</option>
<option value="06">6</option>
<option value="07">7</option>
<option value="08">8</option>
<option value="09">9</option>
<option value="10">10</option>
<option value="11">11</option>
</select>&nbsp;Months </td></tr>
</table>
<div id="WORK_EXP" style="width:250px; marginleft:250px; margin-top:-60px; _margin-left:20px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_WORK_EXP" style="padding: 2px;
width: 400px; display: none;" class="txt_red small_1"></div>
</td>
</tr>
<tr>
<td align="right" valign="top"><span class="txt_orange">* </span>Current /
Preferred industry:</td>
<td valign="top" >
<table cellspacing="0" cellpadding="0" border="0"
id="industry_border">
<tr><td>
<select name="industry" size="8" id="industry"
onchange="loadFA(this,document.CREATEACCTFORM.jobCategory,0);displayAllFunc
tion();" onFocus="hintEvent('CUR_INDUSTRY');"
onBlur="hintEvent('CUR_INDUSTRY', 'HIDE');" multiple="multiple"><option
value=''> - Select - </option><option value='65' >Any</option><option
value='4' >Automotive/ Ancillaries</option><option value='5' >Banking/
Financial Services</option><option value='8' >Bio Technology & Life
Sciences</option><option value='10' >Chemicals/ Plastic/
Rubber</option><option value='11' >Construction</option><option value='13'
>Consumer Goods/ FMCG</option><option value='16' >Education</option><option
value='17' >Entertainment/ Media/ Publishing</option><option value='27'
>Insurance</option><option value='30' >ITES/ BPO/ KPO</option><option
value='31' >IT/ Computers - Hardware</option><option value='32' >IT/
Computers - Software</option><option value='34' >Machinery/ Equipment
Mfg.</option><option value='41' >Oil/ Gas/ Petroleum</option><option
value='42' >Pharmaceuticals</option><option value='45'
>Power</option><option value='48' >Real Estate</option><option value='49'
>Retailing</option><option value='51' >Telecom</option><option value='1'
>Advertising</option><option value='2' >Agriculture/ Dairy
Based</option><option value='3' >Airlines</option><option value='6'
>Beauty/Fitness/PersonalCare/SPA</option><option value='7' >Beverages/
Liquor</option><option value='9' >Cement</option><option value='12'
>Consultancy</option><option value='14' >Courier/ Freight/
Transportation</option><option value='15' >Dotcom</option><option
value='18' >Fertilizer/ Pesticides</option><option value='19' >Food &
Packaged Food</option><option value='20' >Textiles / Yarn / Fabrics /
Garments</option><option value='21' >Gems & Jewellery</option><option
value='22' >Government/ PSU/ Defence</option><option value='23' >Home
Appliances (TV, Fridge, AC etc.)</option><option value='24' >Hospitals/
Health Care</option><option value='25' >Hotels/ Restaurant</option><option
value='26' >Import / Export</option><option value='28' >Iron/
Steel</option><option value='29' >ISP</option><option value='33'
>Leather</option><option value='35' >Market Research</option><option
value='36' >Medical Transcription</option><option value='37'
>Mining</option><option value='38' >NGO</option><option value='39' >NonFerrous Metals (Aluminium, Zinc etc.)</option><option value='40' >Office
Equipment</option><option value='43' >Paints</option><option value='44'
>Paper</option><option value='46' >Printing/ Packaging</option><option
value='47' >Public Relations (PR)</option><option value='50'
>Shipping</option><option value='66' >Sugar</option><option value='52'
>Travel/ Tourism</option><option value='53' >Tyres</option><option
value='54' >Wood</option><option value='55' >Other</option></select>
</td></tr>
 </table>
 <div id="CUR_INDUSTRY" style="width:250px; margin-left:285px;
margin-top:-50px; _margin-left:275px; _margin-top:-60px;
position:absolute;"></div>
<div id="ERR_INDUS" style="padding: 2px; width: 400px;
display: none;" class="txt_red small_1"></div>
</td>
 </tr>
 <tr>
 <td align="right"> Key skills: </td>
 <td >
 <input maxlength="100" size="35" id="keySkills"
name="keySkills" type="text" onFocus="hintEvent('SKILLS');"
onBlur="hintEvent('SKILLS', 'HIDE');" value="">
<div id="SKILLS" style="width:330px;
margin-left:240px; margin-top:-20px; _margin-left:20px; _margin-top:0px;
position:absolute;"></div>
<div id="ERR_KEYSKILL"
style="padding: 2px; width: 400px; display: none;" class="txt_red
small_1"></div>
 </td>
 </tr>
<tr>
 <td colspan="2" align="right" valign="top"
style="background:url(http://media.monsterindia.com/v2.1/dots.gif) repeatx; padding:0px;"><img src="http://media.monsterindia.com/v2.1/trans.gif"
width="1" height="1" /></td>
 </tr>
 <tr>
 <td align="right">&nbsp;</td>
 <td >
 <table width="350" border="0" cellpadding="0"
cellspacing="0">
<tr>
 <td valign="bottom" class="bg_grey" >&nbsp;</td>
<form method="post" action="done.jsp">
<BR><input type="submit" value="SUBMIT"></span></span>
</td>
</table>
<%
String s5=request.getParameter("userName");
String s1=request.getParameter("firstName");
String s2=request.getParameter("lastName");
String s3=request.getParameter("gender");
String s6=request.getParameter("passwd");
String s7=request.getParameter("email");
if(s5!=null && s1!=null && s2!=null && s3!=null && s6!=null && s7!=null)
{
try{
//out.println("success");
//String s4=request.getParameter("mobile");
//int a=Integer.parseInt(s4);
Connection
c=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobportal","root","data@123");
Statement s =c.createStatement();
String sql = "insert into newapplicant values('"+s1+"','"+s2+"','"+s3+"','"+s5+"','"+s6+"','"+s7+"')";
s.execute(sql);
}catch(Exception e ){out.println(e);}
}
%>
</td>
</tr>
</table>
</form>
<form method="post" action="newLOGIN_A.jsp">
<BR><input type="submit" value="LOGIN">
</form>
</body>
</html>