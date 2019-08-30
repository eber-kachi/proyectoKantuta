<?php
    require('../Model/Conexion.php');
    require('../Model/Empleado.php');
    require('../Model/BuscadorEstudiante.php');
    require('../Model/Gestion.php');
    require('../Model/BuscadorGestion.php');

   $objetoBuscadorGestion = new BuscadorGestion();
   $listaGestion= array();

    $listaGestion = $objetoBuscadorGestion->$listaGestion($_REQUEST['gestion1'],$_REQUEST['gestion2']);
?>

<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Highcharts Example</title>

		<style type="text/css">

		</style>
	</head>
	<body>
<script src="Highcharts-7.1.1/code/highcharts.js"></script>
<script src="Highcharts-7.1.1/code/modules/exporting.js"></script>
<script src="Highcharts-7.1.1/code/modules/export-data.js"></script>

<div id="container" style="min-width: 310px; max-width: 800px; height: 400px; margin: 0 auto">
    
</div>



		<script type="text/javascript">

Highcharts.chart('container', {
    chart: {
        type: 'bar'
    },
    title: {
        text: 'Historial de Inscritos de los estudiantes'
    },
    subtitle: {
        text: 'Nivel: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
    },
    xAxis: {
        categories: [
            <?php 
                foreach($listaIM as $objInscripcion){
               ?>
               '<?php echo $objInscripcion->getFechaInscripcionMensualidad();?>',

            <?php        
                }
            ?>

        ],

        title: {
            text: null
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Inscritos (cantidad)',
            align: 'high'
        },
        labels: {
            overflow: 'justify'
        }
    },
    tooltip: {
        valueSuffix: ' '
    },
    plotOptions: {
        bar: {
            dataLabels: {
                enabled: true
            }
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
        shadow: true
    },
    credits: {
        enabled: false
    },

    series: [{
    /*
    {
        name: 'Year 1800',
        data: [107, 31, 635, 203, 2]
    }, 
    {
        name: 'Year 1900',
        data: [133, 156, 947, 408, 6]
    },
    {
        name: 'Year 2000',
        data: [814, 841, 3714, 727, 31]
    }, 
    {
        name: 'Year 2016',
        data: [1216, 1001, 4436, 738, 40]
    }
    */
    name: 'Inscritos',
    data:[
            <?php 
                foreach($listaIM as $objInscripcion){
            ?>
               <?php echo $objInscripcion->getCantidad();?>,

            <?php        
                }
            ?>
    ]//datos
 
    }
    ]//Termina el arreglo

});
		</script>
	</body>
</html>
