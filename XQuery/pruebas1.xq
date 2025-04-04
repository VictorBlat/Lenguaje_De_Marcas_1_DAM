(:
for $libros in doc("libros.xml") /bib/libro
let $autores := $libros//autor
where count($autores) > 2
order by $libros/titulo
return $libros/titulo
:)

(:for $d in doc("libros.xml")/bib/libro/titulo
return <titulos>{ $d }</titulos>:)

for $libros in doc("libros.xml")//libro
return
<libro>
{ $libros/titulo }
{
for $autor at $i in $libros/autor
where $i <= 2
return <autor>{string($autor/apellido), ", ", string($autor/nombre)}
</autor>
}
{
if (count($libros/autor) > 2)(:en la estructura de if en xquery es obligatorio el "if" "then" y "else()" el parentesisi incluido aunque este vacio:)
then
<autor>et al.</autor>
else ()
}
</libro>
