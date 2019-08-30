<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Reportes</title>
    <link rel="stylesheet" href="css/fontello.css" />
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<main>
              <form action="ReporteA2.php" method="post" name="ReporteEstadistico">
                <h1>Mostrar reporte estadístico de los últimos cinco años cantidad de inscritos, hasta un año antes del actual.</h1>
                  <label for="username">Año Inicial :</label>
                  <select name="gestion1">
                  <option>2019</option>
                  <option>2018</option>
                  <option>2017</option>
                  <option>2016</option>
                  <option>2015</option>
                  <option>2014</option>
                  </select>
                 
                  
                  <p>
                  <label for="username">Año Final :</label>
                  <select name="gestion2">
                  <option>2019</option>
                  <option>2018</option>
                  </select>
                  <p>

                  <button type="submit">Aceptar</button>
              </form>
</main>  

</body>

</html>