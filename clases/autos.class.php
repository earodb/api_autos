<?php
require_once "conexion/conexion.php";
require_once "respuestas.class.php";


class autos extends conexion {

    private $table = "automovil";
    private $id_auto = "";
    private $marca = "";
    private $linea = "";
    private $modelo = "";
    private $num_motor = "";
    private $num_chasis = "";
    private $num_cilindros = "";
    private $cc = "";
    private $tipo_transmision = "";
    private $estado = "";
    private $id_categoria = "";
    private $imagenes = "";
    private $token = ""; 

    public function listaAutos(){
       /* $inicio  = 0 ;
        $cantidad = 50;
        if($pagina > 1){
            $inicio = ($cantidad * ($pagina - 1)) +1 ;
            $cantidad = $cantidad * $pagina;
        }
        $query = "SELECT id_auto,marca,linea,modelo,imagenes FROM " . $this->table . " limit $inicio,$cantidad"; */
        $query = "SELECT id_auto,marca,linea,modelo,num_motor,imagenes FROM " . $this->table . " ";


        $datos = parent::obtenerDatos($query);
        return ($datos);
    }


    public function obtenerAuto($id){
        $query = "SELECT * FROM " . $this->table . " WHERE id_auto = '$id'";
        return parent::obtenerDatos($query);

    }

    public function post($json){
        $_respuestas = new respuestas;
        $datos = json_decode($json,true);

        //$nombreimg = $_FILES['imagenes']['name'];
        //$archivo = $_FILES['imagenes']['tmp_name'];
        //$ruta = "imagenes";


        if(!isset($datos['token'])){
                return $_respuestas->error_401();
        }else{
            $this->token = $datos['token'];
            $arrayToken =   $this->buscarToken();
            if($arrayToken){ 
                if(!isset($datos['marca']) || !isset($datos['linea']) || !isset($datos['modelo']) || !isset($datos['imagenes'])){
                    return $_respuestas->error_400();
                }else{
                    $this->marca = $datos['marca'];
                    $this->linea = $datos['linea'];
                    $this->modelo = $datos['modelo'];
                    $this->num_motor = $datos['num_motor'];
                  
                    $this->imagenes = $datos['imagenes'];
                    
                   // subirImagen();


                    //if(isset($datos['num_motor'])) { $this->num_motor = $datos['num_motor']; }
                    if(isset($datos['num_chasis'])) { $this->num_chasis = $datos['num_chasis']; }
                    if(isset($datos['num_cilindros'])) { $this->num_cilindros = $datos['num_cilindros']; }
                    if(isset($datos['cc'])) { $this->cc = $datos['cc']; }
                    if(isset($datos['tipo_transmision'])) { $this->tipo_transmision = $datos['tipo_transmision']; }
                    if(isset($datos['estado'])) { $this->estado = $datos['estado']; }
                    if(isset($datos['id_categoria'])) { $this->id_categoria = $datos['id_categoria']; }
                    //if(isset($datos['imagenes'])) { $this->imagenes = $datos['imagenes']; }

                    $resp = $this->insertarAuto();
                    if($resp){
                        $respuesta = $_respuestas->response;
                        $respuesta["result"] = array(
                            "id_auto" => $resp
                        );
                        return $respuesta;
                    }else{
                        return $_respuestas->error_500();
                    }
                } 
               

            }else{
                return $_respuestas->error_401("El Token que envio es invalido o ha caducado");
            } 
        }


       

    }


    private function insertarAuto(){
        $query = "INSERT INTO " . $this->table . " (marca,linea,modelo,num_motor,num_chasis,num_cilindros,cc,tipo_transmision,estado,id_categoria,imagenes)
        values
        ('" . $this->marca . "','" . $this->linea . "','" . $this->modelo ."','" . $this->num_motor . "','"  . $this->num_chasis . "','" . $this->num_cilindros . "','" . $this->cc . "','" . $this->tipo_transmision . "','" . $this->estado . "','" . $this->id_categoria . "','" . $this->imagenes . "')"; 
        $resp = parent::nonQueryId($query);
        if($resp){
             return $resp;
        }else{
            return 0;
        }
    }


     public function put($json){
        $_respuestas = new respuestas;
        $datos = json_decode($json,true);

        if(!isset($datos['token'])){
                return $_respuestas->error_401();
        }else{
            $this->token = $datos['token'];
            $arrayToken =   $this->buscarToken();
            if($arrayToken){ 
                if(!isset($datos['id_auto'])){
                return $_respuestas->error_400();
                }else{
                    $this->id_auto = $datos['id_auto'];
                    if(isset($datos['marca'])) { $this->marca = $datos['marca']; }
                    if(isset($datos['linea'])) { $this->linea = $datos['linea']; }
                    if(isset($datos['modelo'])) { $this->modelo = $datos['modelo']; }
                    if(isset($datos['num_motor'])) { $this->num_motor = $datos['num_motor']; }
                    if(isset($datos['num_chasis'])) { $this->num_chasis = $datos['num_chasis']; }
                    if(isset($datos['num_cilindros'])) { $this->num_cilindros = $datos['num_cilindros']; }
                    if(isset($datos['cc'])) { $this->cc = $datos['cc']; }
                    if(isset($datos['tipo_transmision'])) { $this->tipo_transmision = $datos['tipo_transmision']; }
                    if(isset($datos['estado'])) { $this->estado = $datos['estado']; }
                    if(isset($datos['id_categoria'])) { $this->id_categoria = $datos['id_categoria']; }
                    if(isset($datos['imagenes'])) { $this->imagenes = $datos['imagenes']; }

                    $resp = $this->modificarAuto();
                    if($resp){
                        $respuesta = $_respuestas->response;
                        $respuesta["result"] = array(
                            "id_auto" => $this->id_auto
                        );
                        return $respuesta;
                    }else{
                        return $_respuestas->error_500();
                    }
                }  

            }else{
                return $_respuestas->error_401("El Token que envio es invalido o ha caducado");
            } 
        }

            
    }

    private function modificarAuto(){
        $query = "UPDATE " . $this->table . " SET marca ='" . $this->marca . "',linea = '" . $this->linea . "', modelo = '" . $this->modelo . "', num_motor = '" .
        $this->num_motor . "', num_chasis = '" . $this->num_chasis . "', num_cilindros = '" . $this->num_cilindros . "', cc = '" . $this->cc . "', tipo_transmision = '" . $this->tipo_transmision . 
         "', estado ='" . $this->estado . "', id_categoria ='" . $this->id_categoria . "', imagenes ='" . $this->imagenes . "' WHERE id_auto = '" . $this->id_auto . "'"; 

        $resp = parent::nonQuery($query);
        if($resp >= 1){
             return $resp;
        }else{
            return 0;
        }
    }

    public function delete($json){
        $_respuestas = new respuestas;
        $datos = json_decode($json,true);

        if(!isset($datos['token'])){
                return $_respuestas->error_401();
        }else{
            $this->token = $datos['token'];
            $arrayToken =   $this->buscarToken();
            if($arrayToken){ 

               if(!isset($datos['id_auto'])){
                    return $_respuestas->error_400();
                }else{
                    $this->id_auto = $datos['id_auto'];
                    

                    $resp = $this->eliminarAuto();
                    if($resp){
                        $respuesta = $_respuestas->response;
                        $respuesta["result"] = array(
                            "id_auto" => $this->id_auto
                        );
                        return $respuesta;
                    }else{
                        return $_respuestas->error_500();
                    }
                } 

            }else{
                return $_respuestas->error_401("El Token que envio es invalido o ha caducado");
            } 
        }

            
    }
   
    private function eliminarAuto(){
        $query = "DELETE FROM " . $this->table . " WHERE id_auto= '" . $this->id_auto . "'";
        $resp = parent::nonQuery($query);
        if($resp >= 1){
             return $resp;
        }else{
            return 0;
        }
    }

    private function buscarToken(){
        $query = "SELECT  TokenId,UsuarioId,Estado from usuarios_token WHERE Token = '" . $this->token . "' AND Estado = 'Activo'";
        $resp = parent::obtenerDatos($query);
        if($resp){
            return $resp;
        }else{
            return 0;
        }
    }


    private function actualizarToken($tokenid){
        $date = date("Y-m-d H:i");
        $query = "UPDATE usuarios_token SET Fecha = '$date' WHERE TokenId = '$tokenid' ";
        $resp = parent::nonQuery($query);
        if($resp >= 1){
            return $resp;
        }else{
            return 0;
        }
    } 

  }


?>