(:Muestra el nombre y precio de todos los bailes.:)

(: XML:)
(:
<bailes>
{
for $bailes in doc("baile.xml")/bailes/baile
let $precio := $bailes/precio/text()
order by ($precio cast as xs:integer)
return <baile>{$bailes/nombre/text()}<precio>{$precio}</precio></baile>
}
</bailes>
:)
(: HTML:)

<html>
<head>
<title>Ejercicio XQuery1-2</title>
</head>
<body>
<ul>
  {
    for $bailes in doc("baile.xml")/bailes/baile
    let $precio := $bailes/precio/text()
    order by ($precio cast as xs:integer)
    return <li>{$bailes/nombre/text()} precio: {$precio}</li>
  }
</ul>
</body>
</html>