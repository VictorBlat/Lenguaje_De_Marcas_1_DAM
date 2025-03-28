for $b in doc("libros.xml") //bib/libro
let $c := $b//autor
where count($c) > 2
order by $b/titulo
return $b/ titulo