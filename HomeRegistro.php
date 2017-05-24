<?php	
	if(isset($_POST['UserR']))  //Comprobar que los valores no esten vacios
		$userR=$_POST['UserR'];   		
	if(isset($_POST['PasswordR']))
		$pass=$_POST['PasswordR'];
	if(isset($_POST["Email"]))
		$em=$_POST["Email"];
	if(isset($_POST["nomb"]))
		$name=$_POST["nomb"];
	if(isset($_POST["bday"]))
		$brdate=$_POST["bday"];
	$regex="/^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$/";
	$regbr="^/(?:3[01]|[12][0-9]|0?[1-9])([\-/.])(0?[1-9]|1[1-2])\1\d{4}$/";
	echo "<!Doctype html>
			<html>
				<head>
					<title>Inicio</title>
					<meta charset='UTF-8'/>
					 <link rel='stylesheet' type='text/css' href='../../Styles/Inicio.css' />
				</head>
				<body>";
				$link = mysqli_connect("localhost","root","","red");
				if($link == TRUE)
					if($userR!="" && $pass!="" && $em!="" && $name!="" && $brdate!=""  )
						if(preg_match("/^[a-z\d_]{1,20}$/i", $userR ) )//&& preg_match( "/^[a-z\d_]{1,20}$/i", $pass ))
							if(preg_match("/^[a-z\d_]{1,20}$/i", $pass ))
								if(preg_match($regex, $em)==TRUE){ # && preg_match("/^[a-z]$/",$name)==TRUE) {
									$result = mysqli_query($link, "SELECT usu from REGISTRO where usu=\"$userR\"");
									$row = mysqli_fetch_assoc($result);

									if($row["usu"]!=$userR) {
										$pass=password_hash($pass, PASSWORD_DEFAULT);
										$consulta="INSERT INTO REGISTRO (nom,f_nac,c_elec,usu,contraseña) VALUES  ( \"$name\" , \"$brdate\" ,\"$em\" , \"$userR\" , \"$pass\" )";
										$resul = mysqli_query($link, $consulta);
										echo "<h2>Felicidades ".$userR." Acabas de registrarte Exitosamente </h2>";
										echo "Ahora por favor regresa a la pagina anterior para que puedas iniciar sesion";
										echo "<a href='../../Templates/inicio.HTML' > Regresar </a>";
									}
									else {
										echo "Error ese nombre de usuario no esta disponible,pruebe con otro";
										echo "<a href='../../Templates/inicio.HTML' > Regresar </a>";	
									}
								}
								elseif (preg_match("/^[a-zA-Z ]*$/", $name)==FALSE) {
									echo "Hay caracteres no permitidos en el nombre";
								}
								else 
									echo "Direccion de correo no valida";
						
						else 
							echo "Caracteres no permitidos en contraseña o invalidos" ;
					else
						echo "Usted dejo al menos un campo vacio";

		echo 	"</body>
   		</html>";

?>