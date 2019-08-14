<?php
	require_once 'model/Curriculum.php';
    require_once 'model/Plazas.php';
    
	class CurriculumController {
		private $model,$plazas;
		
		public function __CONSTRUCT(){
            $this->model = new Curriculum();
            $this->plazas = new Plazas();
        }
        public function Upload()
        {
            session_start();
            require_once 'view/Curriculum/Subir.php';
        }
        public function Ficha()
        {
            session_start();
            require_once 'view/Curriculum/Ficha.php';
        }
        public function Publicar()
        {

            $Modelo=new Curriculum();
            $Titulo=$_REQUEST['Titulo'];
            $Descripcion=$_REQUEST['Descripcion'];
           
            if (isset($_POST['Aceptar'])) { 
                $Modelo=$this->model->Upload($Titulo,$Descripcion); 
                
            }       
        }
        public function UpFicha()
        {

            $Modelo= new Curriculum();
            $Nombre=$_REQUEST['Nombre'];
            $Domicilio=$_REQUEST['Domicilio'];
            $Profesion=$_REQUEST['Profesion'];
            $Estudios=$_REQUEST['Estudios'];            
            $Descripcion=$_REQUEST['Descripcion'];
           
            if (isset($_POST['Aceptar'])) { 
                $Modelo=$this->model->UploadFicha($Nombre,$Domicilio,$Profesion,$Estudios,$Descripcion); 
                require_once 'view/Curriculum/Ficha.php';
            }       
            else
            {
                echo "error";
            }
        }
	

	}
?>