(:MMostrar todos los bailes, excepto el 3 y 5..:)

(: XML:)
(:
<bailes>
  {
   for $bailes in doc("baile.xml")/bailes/baile
    let $id := $bailes/@id
    order by $id
    return 
      if($id != 3 and $id != 5)
      then
      <baile>
      {$bailes/nombre}<numero>{$id}</numero>
      </baile>
      else()
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
    let $id := $bailes/@id
    order by $id
    return 
      if($id != 3 and $id != 5)
      then
      <li>
      {$bailes/nombre}<numero>{$id}</numero>
      </li>
      else()
  
  }
</ul>
</body>
</html>
