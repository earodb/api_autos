<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API - Autos</title>
    <link rel="stylesheet" href="css/estilo.css" type="text/css">
</head>
<body>
<div  class="container">
    <h1>API - Depósito de Automóviles</h1>
    <div class="divbody">
        <h3>Autenticación - login</h3>
        <code>
           POST  /autent
           <br>
           {
               <br>
               "usuario" :"",  -> REQUERIDO
               <br>
               "password": "" -> REQUERIDO
               <br>
            }
        
        </code>
    </div>      
    <div class="divbody">   
        <h3>Autos</h3>
        <code>
           GET  /autos
           <br>
           GET  /autos?id=$idAuto
        </code>
        <code>
           POST  /autos
           <br> 
           {
            <br> 
               "marca" : "",               -> REQUERIDO
               <br> 
               "linea" : "",                  -> REQUERIDO
               <br> 
               "modelo":"",                 -> REQUERIDO
               <br> 
               "num_motor" :"",             -> REQUERIDO
               <br>  
               "num_chasis" : "",        
               <br>        
               "num_cilindros" : "",       
               <br>       
               "cc" : "", 
               <br>        
               "tipo_transmision" : "", 
               <br>        
               "estado" : "", 
               <br>        
               "id_categoria" : "",    
               <br>        
               "imagenes" : "",       -> REQUERIDO
               <br>         
               "token" : ""                 -> REQUERIDO        
               <br>       
           }
        </code>
        <code>
           PUT  /autos
           <br> 
           {
            <br> 
              "marca" : "",              
               <br> 
               "linea" : "",                  
               <br> 
               "modelo":"",                 
               <br> 
               "num_motor" :"",             
               <br>  
               "num_chasis" : "",        
               <br>        
               "num_cilindros" : "",       
               <br>       
               "cc" : "", 
               <br>        
               "tipo_transmision" : "", 
               <br>        
               "estado" : "", 
               <br>        
               "id_categoria" : "",    
               <br>        
               "imagenes" : "",  
               <br>         
               "token" : "" ,                -> REQUERIDO        
               <br>       
               "id_auto" : ""   -> REQUERIDO
               <br>
           }
        </code>
        <code>
           DELETE  /autos
           <br> 
           {   
               <br>    
               "token" : "",                -> REQUERIDO        
               <br>       
               "id_auto" : ""   -> REQUERIDO
               <br>
           }
        </code>
    </div>
</div>
    
</body>
</html>