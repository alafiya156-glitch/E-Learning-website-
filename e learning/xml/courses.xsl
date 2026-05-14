<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Course Catalog (XML)</title>

<style>
body{
    font-family:Segoe UI;
    background:linear-gradient(135deg,#6c4cff,#4fd1c5);
    padding:40px;
}
h2{
    text-align:center;
    color:white;
}
table{
    width:70%;
    margin:auto;
    background:white;
    border-collapse:collapse;
    border-radius:15px;
    overflow:hidden;
}
th{
    background:#6c4cff;
    color:white;
    padding:15px;
}
td{
    padding:15px;
    border-bottom:1px solid #eee;
    text-align:center;
}
tr:hover{
    background:#f5f7ff;
}
</style>

</head>

<body>

<h2>📚 Course Catalog (XML + XSL)</h2>

<table border="1">
<tr>
  <th>Course</th>
  <th>Duration</th>
  <th>Level</th>
  <th>Price</th>
</tr>

<xsl:for-each select="courses/course">
<tr>
  <td><xsl:value-of select="name"/></td>
  <td><xsl:value-of select="duration"/></td>
  <td><xsl:value-of select="level"/></td>
  <td><xsl:value-of select="price"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>