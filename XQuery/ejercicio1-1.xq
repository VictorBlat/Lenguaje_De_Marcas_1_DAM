(:. Muestra el nombre de todos los bailes.:)

(: XML:)

(:<bailes>
{
for $nombres in doc("baile.xml")/bailes/baile/nombre/text()


return <baile>{$nombres}</baile> 
}
</bailes>:)

(: HTML:)

<html>
<head>
<title>Ejercicio XQuery1-1</title>
</head>
<body>
<ul>
    {
      for $nombres in doc("baile.xml")/bailes/baile/nombre/text()
      return <li>{$nombres}</li> 
    }
</ul>
</body>
</html>