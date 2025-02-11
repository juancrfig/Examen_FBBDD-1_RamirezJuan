# Introduction to Back-End Test

La tabla de clientes, la cual tendrá información basica y de contacto
de cada cliente. 

La tabla servicios presenta información acerca de todo los servicios que vende la tienda, 
los cuales no provocan una disminución de los items del inventario. 

La tabla purchases engloba los posibles items y servicios que un cliente puede hacer, 
guardando toda esta información junto con el ID del cliente y la fecha en la que se hizo. 
Al hacer esto último se abre la posibilidad de usar luego esta información para el análisis
de patrones en pos de beneficios económicos basados en tendencias de compra. 

La tabla de providers almacena el id y nombre del proveedor.

La tabla items muestra detalles sobre estos, y como se relacionan con los pedidos que
hace la tienda a los proveedores. 

La idea de la tabla inventary es que se programe de tal manera que dinamicamente añada 
productos que llegan desde la tabla pedidos y elimine productos que son vendidos en
en la tabla purchase.

