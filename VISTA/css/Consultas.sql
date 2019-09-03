

SELECT i.nombre as 'Nombre del Departamento'
FROM inmueble i, tipoInmueble ti, pagoInmueble pi, pago p
WHERE p.precio=0
AND p.codigoPago=pi.codigoPago
AND pi.codigoInmueble=i.codigoInmueble
AND i.codigoTipoInmueble=ti.codigoTipoInmueble
AND ti.codigoTipoInmueble=1
ORDER BY i.nombre;

SELECT i.nombre as 'Nombre del Departamento'
FROM inmueble i, tipoInmueble ti, pagoInmueble pi, pago p
WHERE DAY(p.fecha)>10
AND p.codigoPago=pi.codigoPago
AND pi.codigoInmueble=i.codigoInmueble
AND i.codigoTipoInmueble=ti.codigoTipoInmueble
AND ti.codigoTipoInmueble=1
ORDER BY i.nombre;


SELECT CONCAT_WS('',P.apellidoPaterno," ",P.apellidoMaterno," ",P.primerNombre," ",P.segundoNombre) as 'Dueño', (COUNT(i.codigoInmueble)) as 'Cantidad'
FROM inmueble i, propietario P
WHERE Cantidad >=2
AND i.codigoPropietario=P.codigoPropietario
ORDER BY Dueño;


SELECT fecha 
FROM pago
WHERE DAY(fecha)>5